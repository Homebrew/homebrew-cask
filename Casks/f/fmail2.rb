cask "fmail2" do
  # NOTE: "2" is not a version number, but an intrinsic part of the product name
  version "2.8.5"
  sha256 "6c91bcc8f8ce7ddf1e264d85756400129114aa28d6d593c4d549eb5fffaea5c0"

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
