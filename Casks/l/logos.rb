cask "logos" do
  arch arm: "-arm"

  version "50.0.0.0253"
  sha256 arm:   "cdc7367677be4058839b89526b1d7b372ad2e73fc625c9ed61e083389671177e",
         intel: "d2a63759310991ebc804947242aa9d8f4d9604c4b6b3cc038a35ff3322acb87f"

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
  depends_on macos: ">= :sonoma"

  app "Logos.app"

  uninstall launchctl: "com.logos.LogosIndexer",
            quit:      "com.logos.Logos"

  zap trash: [
    "~/Library/LaunchAgents/com.logos.desktop.logosindexer.plist",
    "~/Library/Preferences/com.logos.*.plist",
  ]
end
