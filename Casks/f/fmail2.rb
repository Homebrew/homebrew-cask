cask "fmail2" do
  # NOTE: "2" is not a version number, but an intrinsic part of the product name
  version "2.8.6"
  sha256 "067be414811966328eed5b12a86d1c97f6ddcf8354f41ff5f61746b97d533901"

  url "https://fmail.appmac.fr/update/sparkle/FMail2_#{version.no_dots}.zip",
      verified: "fmail.appmac.fr/update/sparkle/"
  name "FMail2"
  desc "Unofficial native application for Fastmail"
  homepage "https://fmail.arievanboxel.fr/"

  livecheck do
    url "https://fmail.appmac.fr/update/sparkle/appcast.xml"
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
