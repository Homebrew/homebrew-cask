cask "macx-dvd-ripper-pro" do
  version "6.8.4"
  sha256 :no_check

  url "https://www.macxdvd.com/download/macx-dvd-ripper-pro.dmg"
  name "MacX DVD Ripper Pro"
  desc "DVD ripping application"
  homepage "https://www.macxdvd.com/mac-dvd-ripper-pro/"

  livecheck do
    url "https://www.macxdvd.com/mac-dvd-ripper-pro/upgrade/macx-dvd-ripper-pro"
    strategy :xml do |xml|
      # The plist file contains nested "LastestVersion" keys that apply to
      # language variants, so we specifically match the main key
      version = xml.elements["/plist/dict/key[text()='LastestVersion']"]&.next_element&.text

      # Retry without the typo if the key isn't found
      version ||= xml.elements["/plist/dict/key[text()='LatestVersion']"]&.next_element&.text
      next if version.blank?

      version.strip
    end
  end

  app "MacX DVD Ripper Pro.app"

  zap trash: [
    "~/Library/Application Support/Digiarty/MacX DVD Ripper Pro",
    "~/Library/Caches/com.macxdvd.macxvideoconverterpro",
    "~/Library/HTTPStorages/com.macxdvd.macxvideoconverterpro",
    "~/Library/Preferences/com.macxdvd.macxvideoconverterpro.plist",
    "~/Library/Saved Application State/com.macxdvd.macxvideoconverterpro.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
