cask "meta-quest-remote-desktop" do
  version "95.0.0.1.111,27394998086829035"
  sha256 "9441113b109b086acf3982c77fd88f6a82042b84e3c8036880fc9d3982faaeef"

  url "https://securecdn.oculus.com/binaries/download/?id=#{version.csv.second}",
      verified: "securecdn.oculus.com/"
  name "Meta Quest Remote Desktop"
  desc "Remote desktop companion app for Meta Quest headsets"
  homepage "https://www.meta.com/quest/"

  livecheck do
    url "https://www.oculus.com/download_app/?id=7248432555245552"
    regex(%r{/binaries/download/.*?[?&]id=(\d+)}i)
    strategy :header_match do |headers, regex|
      binary_id = headers["location"]&.[](regex, 1)
      next unless binary_id

      cask = CaskLoader.load(__FILE__)
      app_version = Homebrew::Livecheck::Strategy::ExtractPlist.find_versions(
        cask: cask,
        url:  "https://securecdn.oculus.com/binaries/download/?id=#{binary_id}",
      )[:matches].values.max
      next unless app_version

      "#{app_version},#{binary_id}"
    end
  end

  depends_on macos: :ventura
  container type: :naked

  rename "download", "Meta Quest Remote Desktop.pkg"

  pkg "Meta Quest Remote Desktop.pkg"

  uninstall quit:    "com.meta.virtualdesktop",
            pkgutil: "com.meta.virtualdesktop"

  zap trash: [
    "~/Library/Application Support/Meta Quest Remote Desktop",
    "~/Library/Application Support/Oculus Remote Desktop",
    "~/Library/Caches/com.meta.virtualdesktop",
    "~/Library/Caches/com.oculus.xr2dsd",
    "~/Library/HTTPStorages/com.meta.virtualdesktop",
    "~/Library/Preferences/com.meta.virtualdesktop.plist",
    "~/Library/Preferences/com.oculus.remotedesktop.plist",
    "~/Library/Preferences/com.oculus.xr2ds.remotedesktop.plist",
    "~/Library/Preferences/com.oculus.xr2dsd.plist",
    "~/Library/Preferences/com.oculus.xr2dsd.telemetry",
    "~/Library/Saved Application State/com.meta.virtualdesktop.savedState",
  ]
end
