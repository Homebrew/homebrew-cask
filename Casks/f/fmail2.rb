cask "fmail2" do
  # NOTE: "2" is not a version number, but an intrinsic part of the product name
  version "2.8.9"
  sha256 "646f7e7aeb319692a636a1d484bf8f350dba0a256d01c3e8948afba97f10a401"

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
