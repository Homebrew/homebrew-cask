cask "proclaim" do
  arch arm: "-arm"

  version "4.14.0.0186"
  sha256 arm:   "cc979fb83bb26d0a6cf51219976ad34e0505c2d0d2b6a64370086e2c9b220372",
         intel: "1be05d70b914893fa6c01149287abb9f48f95f84cdd366fbeab99de163d3df44"

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
