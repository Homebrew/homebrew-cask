cask "fmail3" do
  version "1.4.5"
  sha256 "3f5afcd7bc23a04423c0d70c589cde847f3ebf4fdb1e685a4283f444e31cc7e3"

  url "https://fmail3.appmac.fr/update/sparkle/FMail3_#{version.no_dots}.zip"
  name "FMail3"
  desc "Unofficial native application for Fastmail"
  homepage "https://fmail3.appmac.fr/"

  livecheck do
    url "https://fmail3.appmac.fr/update/sparkle/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :sequoia"

  app "FMail3.app"

  zap trash: [
    "~/Library/Application Scripts/fr.arievanboxel.FMail3",
    "~/Library/Containers/fr.arievanboxel.FMail3",
  ]
end
