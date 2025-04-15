cask "proclaim" do
  arch arm: "-arm"

  version "4.10.0.0174"
  sha256 arm:   "1cd1fd498a8c2413c7dcdbededf2b8f4651027a20499faa212d4ce631bad3f8b",
         intel: "34fec11f6cc9cf1e7be1ec9efdd252e60039d868410bcd66ebe71f6d81479752"

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
