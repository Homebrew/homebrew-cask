cask "fmail3" do
  version "2.6.9"
  sha256 "a26401ce9aa257b335822885b99c56c7b769b078adc2f37d8a349bfa5d9266b1"

  url "https://fmail3.appmac.fr/update/sparkle/FMail3-#{version}.dmg"
  name "FMail3"
  desc "Unofficial native application for Fastmail"
  homepage "https://fmail3.appmac.fr/"

  livecheck do
    url "https://fmail3.appmac.fr/update/sparkle/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :sequoia

  app "FMail3.app"

  zap trash: [
    "~/Library/Application Scripts/fr.arievanboxel.FMail3",
    "~/Library/Containers/fr.arievanboxel.FMail3",
  ]
end
