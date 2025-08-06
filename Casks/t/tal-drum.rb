cask "tal-drum" do
  version "2.8.2"
  sha256 :no_check

  url "https://tal-software.com/downloads/plugins/TAL-Drum-installer_macos.zip"
  name "TAL-Drum"
  desc "Drum sampler plug-in"
  homepage "https://tal-software.com/products/tal-drum"

  livecheck do
    url "https://api.tal-software.com/api/page/byUrl/*products*tal-drum"
    regex(/Version\s+v?(\d+(?:\.\d+)+)/i)
  end

  depends_on macos: ">= :el_capitan"

  pkg "TAL-Drum-installer.pkg"

  uninstall pkgutil: [
    "com.talsoftware.pkg.TAL-Drum-AAX",
    "com.talsoftware.pkg.TAL-Drum-AU",
    "com.talsoftware.pkg.TAL-Drum-CLAP",
    "com.talsoftware.pkg.TAL-Drum-VST",
    "com.talsoftware.pkg.TAL-Drum-VST3",
  ]

  zap trash: [
        "~/Library/Application Support/ToguAudioLine/TAL-Drum*",
        "~/Library/Caches/TAL-Drum",
      ],
      rmdir: "~/Library/Application Support/ToguAudioLine"
end
