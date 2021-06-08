cask "peugeot-update" do
  version "1.1.1"
  sha256 :no_check

  url "https://fr.ndp.awsmpsa.com/majesticinstaller/peugeot_update.dmg",
      verified: "fr.ndp.awsmpsa.com"
  name "peugeot-update"
  desc "Update Peugeot navigating system"
  homepage "https://cartographie.peugeot.fr/mise-a-jour-cartographie-gps.html"

  livecheck do
    url "https://fr.ndp.awsmpsa.com/majesticinstaller/latest-mac.yml"
    strategy :electron_builder
  end

  app "Peugeot Update.app"

  zap trash: "~/Library/Application Support/Peugeot Update"
end
