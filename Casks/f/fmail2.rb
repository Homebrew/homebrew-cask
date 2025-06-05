cask "fmail2" do
  # NOTE: "2" is not a version number, but an intrinsic part of the product name
  version "2.8.7"
  sha256 "2baec91cfe0a08e710692a27f6a7011f0f7a65f380f42b399905f48af7f555f3"

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
