cask "imaging-edge-webcam" do
  version "120_2403a,xB4KucKqdT"
  sha256 "70f4558ad5ec37127ed58b755bde1acb268edf88b5eba61a17388641215da9fd"

  url "https://di.update.sony.net/NEX/#{version.csv.second}/IEW#{version.csv.first}.dmg",
      verified: "di.update.sony.net/NEX/"
  name "Sony Imaging Edge Webcam"
  desc "Use your Sony camera as a high-quality webcam"
  homepage "https://support.d-imaging.sony.co.jp/app/webcam/en/"

  livecheck do
    url "https://support.d-imaging.sony.co.jp/disoft_DL/webcam/mac?fm=us"
    regex(%r{/([a-z0-9]+)/IEW(\d+_\d+[a-z]?)\.dmg}i)
    strategy :header_match do |headers, regex|
      match = headers["location"]&.scan(regex)&.flatten
      next if match.blank?

      "#{match[1]},#{match[0]}"
    end
  end

  depends_on macos: ">= :ventura"

  pkg "IEW_INST.pkg"

  # NOTE: The Camera Extension installed by this Cask cannot be automatically removed
  # while System Integrity Protection is enabled.
  #
  # System Settings > General > Login Items & Extensions
  # "/Library/SystemExtensions/*/com.sony.imagingedge.iew.CameraExt.systemextension"
  #
  # > systemextensionsctl list
  # 1 extension(s)
  # --- com.apple.system_extension.cmio (Go to 'System Settings > General > Login Items & Extensions >
  #                                      Camera Extensions' to modify these system extension(s))
  # enabled active  teamID  bundleID (version)                                  name       [state]
  # *       *       __      com.sony.imagingedge.iew.CameraExt (1.2.0.02210/1)  CameraExt  [activated enabled]
  #
  # > systemextensionsctl uninstall
  # At this time, this tool cannot be used if System Integrity Protection is enabled.
  # This limitation will be removed in the near future.
  # Please remember to re-enable System Integrity Protection!
  #
  # uninstall script: {
  #   executable: "systemextensionsctl",
  #   args:       ["uninstall", "com.sony.imagingedge.iew.CameraExt"],
  #   sudo:       true
  # }

  uninstall quit:    "com.sony.imagingedge.iew",
            pkgutil: "com.sony.Webcam"

  zap pkgutil: "com.sony.ImagingEdgeVer.1.pkg",
      trash:   [
        "~/Library/Application Support/Imaging Edge",
        "~/Library/Preferences/com.sony.LocaleInfo.plist",
      ]
end
