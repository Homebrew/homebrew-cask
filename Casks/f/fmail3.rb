cask "fmail3" do
  version "3.1.1"
  sha256 "739d91310c94a621ffdba5890f1ae164c421fbd00d89cab101740f6ebb37e59f"

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
