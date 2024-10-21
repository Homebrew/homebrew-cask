cask "logos" do
  arch arm: "-arm"

  version "37.0.0.0667"
  sha256 arm:   "d9f00d3a8e4ce599d48c8a0d1f9f36db1f2b395b5dfe0367150c8de8fcd4a16e",
         intel: "df92348dd179770566a25d75cc5503a1b07b3639f7a216dda6de8c598dc61ec5"

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
  depends_on macos: ">= :monterey"

  app "Logos.app"

  uninstall launchctl: "com.logos.LogosIndexer",
            quit:      "com.logos.Logos"

  zap trash: [
    "~/Library/Preferences/com.logos.Logos.plist",
    "~/Library/Preferences/com.logos.LogosCEF.plist",
    "~/Library/Preferences/com.logos.LogosIndexer.plist",
  ]
end
