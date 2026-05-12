cask "proclaim" do
  arch arm: "-arm"

  version "4.18.0.0365"
  sha256 arm:   "325e6fa40f2e8d2ef287e3ed9d40192c7db9e1288d6833ddfafd8f01ff43fcfc",
         intel: "ee613ca94bcdc3e8ca11f27b7b9292dd6c40cf0e3d2fce00e3de195d569dfb82"

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
  depends_on macos: :monterey

  app "Proclaim.app"

  zap trash: [
    "~/Library/Application Support/Proclaim",
    "~/Library/Preferences/com.logos.Proclaim.plist",
    "~/Library/Saved Application State/com.logos.Proclaim.savedState",
  ]
end
