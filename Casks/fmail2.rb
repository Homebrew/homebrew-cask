cask "fmail2" do
  # NOTE: "2" is not a version number, but an intrinsic part of the product name
  version "1.6.3,56"
  sha256 "195d753c49bffe31875ad14e7cdbaf9ca3987173b71a523d591bdec1f3480575"

  url "https://arievanboxel.fr/fmail2/sparkle/FMail2_#{version.csv.first.no_dots}.zip",
      verified: "arievanboxel.fr"
  name "fmail2"
  desc "Unofficial 'light' native application for Fastmail"
  homepage "https://fmail-app.fr/"

  livecheck do
    url "https://arievanboxel.fr/fmail2/sparkle/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "FMail2.app"

  zap trash: [
    "~/Library/Application Scripts/fr.arievanboxel.FMail2",
    "~/Library/Containers/fr.arievanboxel.FMail2",
  ]
end
