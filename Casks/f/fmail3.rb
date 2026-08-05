cask "fmail3" do
  version "2.6.10"
  sha256 "0035ab5fa1ff7466e917d1348e9e522d9815c3ee1b67925c4ce548f7b64f43a0"

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
