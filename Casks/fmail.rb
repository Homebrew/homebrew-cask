cask "fmail" do
  version "2.5.3,101"
  sha256 "a5a16def0894ffa487bd616537bdabe1c76ed93b393c419c30daea650d5fa963"

  url "https://arievanboxel.fr/fmail/sparkle/FMail_#{version.csv.first.no_dots}.zip"
  name "FMail"
  desc "Unofficial native application for Fastmail"
  homepage "https://arievanboxel.fr/fmail/en/"

  livecheck do
    url "https://arievanboxel.fr/fmail/sparkle/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :mojave"

  app "FMail.app"

  uninstall quit: "fr.arievanboxel.fmail"

  zap trash: [
    "~/Library/Application Scripts/fr.arievanboxel.FMail",
    "~/Library/Containers/fr.arievanboxel.FMail",
  ]
end
