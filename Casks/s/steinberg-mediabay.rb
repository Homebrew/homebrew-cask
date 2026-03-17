cask "steinberg-mediabay" do
  version "1.3.60.55,9adca9fb-bd52-364a-8d6a-955312ed09e0"
  sha256 "1a66ca8398c13448b3a8f9e50bb338402042eaeb4eb653898aa2e929ac161d40"

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
