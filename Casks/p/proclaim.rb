cask "proclaim" do
  arch arm: "-arm"

  version "4.9.0.0204"
  sha256 arm:   "a5d79999c76d76fd2d0c2d0f1ca0db2c970cb15f2e4cedbfa64a826fb7a525a5",
         intel: "ca60fe2d8f3be5f8ca8710e33f7c395d1d2e86494a95a5d34595ab96a83c9da8"

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
  depends_on macos: ">= :big_sur"

  app "Proclaim.app"

  zap trash: [
    "~/Library/Application Support/Proclaim",
    "~/Library/Preferences/com.logos.Proclaim.plist",
    "~/Library/Saved Application State/com.logos.Proclaim.savedState",
  ]
end
