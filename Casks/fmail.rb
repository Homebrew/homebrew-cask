cask "fmail" do
  version "2.7.2,119"
  sha256 "cf6c16da9287d87dfab5bad6440fe5e06a72196ed95a2f9291e7006941981095"

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
