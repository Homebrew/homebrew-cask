cask "logos" do
  arch arm: "-arm"

  version "44.2.0.0010"
  sha256 arm:   "6504b11a3aa05bd833b3cd580747a65ee1d63d689f1bc06cbb6949fb31c53132",
         intel: "2177c1c90dc634a5057e9510836386cf53989e6697a84c94f737a41d22fc0d76"

  url "https://downloads.logoscdn.com/LBS10/Installer/#{version}/LogosMac#{arch}.dmg",
      verified: "downloads.logoscdn.com/"
  name "Logos"
  desc "Bible study software"
  homepage "https://www.logos.com/"

  livecheck do
    url "https://clientservices.logos.com/update/v1/feed/logos10-mac/stable.xml"
    strategy :xml do |xml|
      xml.get_elements("//logos:version")&.map { |item| item.text&.strip }
    end
  end

  auto_updates true
  depends_on macos: ">= :ventura"

  app "Logos.app"

  uninstall launchctl: "com.logos.LogosIndexer",
            quit:      "com.logos.Logos"

  zap trash: [
    "~/Library/Preferences/com.logos.Logos.plist",
    "~/Library/Preferences/com.logos.LogosCEF.plist",
    "~/Library/Preferences/com.logos.LogosIndexer.plist",
  ]
end
