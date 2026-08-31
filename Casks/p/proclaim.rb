cask "proclaim" do
  arch arm: "-arm"

  version "4.20.0.0134"
  sha256 arm:   "1743e4dc68c183d0555c25a56301baa008f64fa671976ae0554f8c47a14bcb6f",
         intel: "6a6de96aab4b4c62ba59bf492cdca8b2ec0c9e496d903da23111d6fc86b2dfc7"

  url "https://downloads.logoscdn.com/Proclaim/Installer/#{version}/Proclaim#{arch}.dmg"
  name "Proclaim"
  desc "Church presentation software"
  homepage "https://proclaim.logos.com/"

  livecheck do
    url "https://clientservices.logos.com/update/v1/feed/proclaim-mac/stable.xml"
    strategy :xml do |xml|
      xml.get_elements("//logos:version")&.map { |item| item.text&.strip }
    end
  end

  auto_updates true
  depends_on macos: :monterey

  app "Proclaim.app"

  zap trash: [
    "~/Library/Application Support/Proclaim",
    "~/Library/Preferences/com.logos.Proclaim.plist",
    "~/Library/Saved Application State/com.logos.Proclaim.savedState",
  ]
end
