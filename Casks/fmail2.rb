cask "fmail2" do
  # NOTE: "2" is not a version number, but an intrinsic part of the product name
  version "2.3.1"
  sha256 "dced48934c11ba3d180301149a12ea2abf2b63a2a2ffe5a9d38801319ed544ae"

  url "https://arievanboxel.fr/fmail2/sparkle/FMail2_#{version.no_dots}.zip",
      verified: "arievanboxel.fr/fmail2/sparkle/"
  name "FMail2"
  desc "Unofficial native application for Fastmail"
  homepage "https://fmail-app.fr/"

  livecheck do
    url "https://arievanboxel.fr/fmail2/sparkle/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "FMail2.app"

  zap trash: [
    "~/Library/Application Scripts/fr.arievanboxel.FMail2",
    "~/Library/Containers/fr.arievanboxel.FMail2",
  ]
end
