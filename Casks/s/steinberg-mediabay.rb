cask "steinberg-mediabay" do
  version "1.3.100.79,74baf415-2843-31e9-b355-a5ef395cf856"
  sha256 "f7c1218626fe29c73983975de86a5ea0a2335767cf2cbb9c6370ff28bf3f1f2f"

  url "https://download.steinberg.net/static_content/runtime-components/steinberg-media-bay/#{version.csv.first}-#{version.csv.second}/MediaBay_Installer_mac.dmg"
  name "Steinberg MediaBay"
  desc "Content manager for Steinberg software"
  homepage "https://o.steinberg.net/en/support/downloads/steinberg_mediabay.html"

  livecheck do
    url "https://r.mb.steinberg.net/rc-mediabay-mac"
    regex(%r{/v?(\d+(?:\.\d+)+)-([^/]+)/MediaBay_Installer_mac\.dmg}i)
    strategy :header_match do |headers, regex|
      match = headers["location"]&.match(regex)
      next if match.blank?

      "#{match[1]},#{match[2]}"
    end
  end

  depends_on macos: :big_sur

  pkg "MediaBay.pkg"

  uninstall pkgutil: [
              "com.steinberg.MediaClient",
              "com.steinberg.mediaserver",
              "net.steinberg.vstsounds.vstsoundcontentupdate",
            ],
            delete:  "/Library/Application Support/Steinberg/MediaBay"

  zap trash: "~/Library/Preferences/Steinberg MediaBay Server"
end
