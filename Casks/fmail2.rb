cask "fmail2" do
  # NOTE: "2" is not a version number, but an intrinsic part of the product name
  version "1.1.1,17"
  sha256 "c1783a96349848845ecc80b538c9515d700da6cd3d2631a75ca7f8f9ac59693e"

  url "https://arievanboxel.fr/fmail2/sparkle/FMail2_#{version.csv.first.no_dots}.zip",
      verified: "arievanboxel.fr"
  name "fmail2"
  desc "Unofficial 'light' native application for Fastmail"
  homepage "https://fmail-app.fr/tabs/main.html"

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
