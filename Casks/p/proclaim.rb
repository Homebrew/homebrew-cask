cask "proclaim" do
  arch arm: "-arm"

  version "4.21.0.0175"
  sha256 arm:   "b36a47676a94cb27cea380d1cc5daf9df343e755cb6aa103e349ffe12d9ee1e7",
         intel: "c4ddc71463e90f8bd41cdd7c2429ea400c517def9be2a4935ca4cfb81ce26de1"

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
