cask "steinberg-mediabay" do
  version "1.3.40.52,726be661-1aaf-3318-acc4-33a117719e67"
  sha256 "51ab236695b69c8f67357a81c978aa115cf13a2ea49ca41a1f6dc2d160db4292"

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
