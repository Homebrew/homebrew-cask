cask "fmail" do
  version "2.7.5,122"
  sha256 "5566f437aa25829517e533eda4bad10e4942ee2a3a8644be3d8d4b7d807feb35"

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
