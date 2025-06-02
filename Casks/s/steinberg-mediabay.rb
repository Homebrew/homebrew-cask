cask "steinberg-mediabay" do
  version "1.3.10.42,efbba1e5-714d-33c4-810f-2234f7514c95"
  sha256 "b7aea3f972bb4a69f4dd8e504edcd23996a7f9c7f0ad299c8687fde6852f27e6"

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
