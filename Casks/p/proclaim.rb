cask "proclaim" do
  arch arm: "-arm"

  version "4.14.0.0187"
  sha256 arm:   "15ecbecb81f6bb9f672682a3ca8400b492bf9aaee07f9dc14c373118f14c2d5e",
         intel: "f4ece1ba38e82eeb8906b5df4650b19e4beae0ee19cdc13c303a4bd9818fd20d"

  url "https://downloads.logoscdn.com/Proclaim/Installer/#{version}/Proclaim#{arch}.dmg",
      verified: "logoscdn.com/Proclaim/"
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
  depends_on macos: ">= :monterey"

  app "Proclaim.app"

  zap trash: [
    "~/Library/Application Support/Proclaim",
    "~/Library/Preferences/com.logos.Proclaim.plist",
    "~/Library/Saved Application State/com.logos.Proclaim.savedState",
  ]
end
