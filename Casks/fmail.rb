cask "fmail" do
  version "2.3.6,87"
  sha256 :no_check

  url "https://arievanboxel.fr/fmail/updates/fmail.dmg"
  name "FMail"
  desc "Unofficial native application for Fastmail"
  homepage "https://arievanboxel.fr/fmail/en/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  app "FMail.app"

  zap trash: [
    "~/Library/Application Scripts/fr.arievanboxel.FMail",
    "~/Library/Containers/fr.arievanboxel.FMail",
  ]
end
