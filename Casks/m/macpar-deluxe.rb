cask "macpar-deluxe" do
  version "5.1.1"
  sha256 :no_check

  url "https://www.xs4all.nl/~gp/MacPAR_deLuxe/MacPARdeLuxe.dmg"
  name "MacPAR deLuxe"
  desc "Utility to combine binary content files after download"
  homepage "https://gp.home.xs4all.nl/Site/MacPAR_deLuxe.html"

  livecheck do
    url "https://gp.home.xs4all.nl/versionlist.xml"
    strategy :xml do |xml|
      version = xml.elements["//key[text()='MacPARdeLuxe']"]&.next_element&.text
      next if version.blank?

      version.strip
    end
  end

  app "MacPAR deLuxe.app"

  zap trash: [
    "~/Library/Application Support/nl.xs4all.gp.macpardeluxe",
    "~/Library/Caches/com.apple.helpd/Generated/MacPAR deLuxe Help*",
    "~/Library/Caches/com.crashlytics.data/nl.xs4all.gp.macpardeluxe",
    "~/Library/Caches/nl.xs4all.gp.macpardeluxe",
    "~/Library/HTTPStorages/nl.xs4all.gp.macpardeluxe",
    "~/Library/Preferences/nl.xs4all.gp.macpardeluxe.plist",
    "~/Library/Saved Application State/nl.xs4all.gp.macpardeluxe.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
