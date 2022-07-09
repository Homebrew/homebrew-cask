cask "fmail" do
  version "2.7.1,118"
  sha256 "d67f237e23aab321820b5e1780e3225aeb45b215d73a3eb0b11ce4b09bb39740"

  url "https://arievanboxel.fr/fmail/sparkle/FMail_#{version.csv.first.no_dots}.zip"
  name "FMail"
  desc "Unofficial native application for Fastmail"
  homepage "https://arievanboxel.fr/fmail/en/"

  livecheck do
    url "https://arievanboxel.fr/fmail/sparkle/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "FMail.app"

  uninstall quit: "fr.arievanboxel.fmail"

  zap trash: [
    "~/Library/Application Scripts/fr.arievanboxel.FMail",
    "~/Library/Containers/fr.arievanboxel.FMail",
  ]
end
