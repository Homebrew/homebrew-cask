cask "proclaim" do
  arch arm: "-arm"

  version "4.22.0.0095"
  sha256 arm:   "6a0477e876ae619ef5ba25339812b6fb8a2d7bbf8cd9701dcad51890ae3171a8",
         intel: "817771639ea2b6fcf1cb1d9e009bfc14da37bc447c5bb7cf1e21c745873578fd"

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
