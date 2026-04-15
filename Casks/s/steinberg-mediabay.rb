cask "steinberg-mediabay" do
  version "1.3.70.57,1cbf8801-4c8f-30ca-951f-5e3bef4c2040"
  sha256 "627fa67e7de27d4d45886a788f890339ee60d9ee58e92618b31bcf33b2ed6b43"

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

  depends_on macos: ">= :big_sur"

  pkg "MediaBay.pkg"

  uninstall pkgutil: [
              "com.steinberg.MediaClient",
              "com.steinberg.mediaserver",
              "net.steinberg.vstsounds.vstsoundcontentupdate",
            ],
            delete:  "/Library/Application Support/Steinberg/MediaBay"

  zap trash: "~/Library/Preferences/Steinberg MediaBay Server"
end
