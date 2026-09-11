cask "proclaim" do
  arch arm: "-arm"

  version "4.20.0.0135"
  sha256 arm:   "1f6ce2dcc2b7936d216b343475fad32d75dd2616f9b680e5abd23822e5889e8d",
         intel: "a9361a175e9e49ce99a92b49b0659b48cdf7bf3021c7ec4d08ce93f5c4ebf6fc"

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
