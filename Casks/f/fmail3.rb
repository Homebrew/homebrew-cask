cask "fmail3" do
  version "2.6.5"
  sha256 "7e0069097de581e6edd687a3416c13bc8876e07891617623fbe696dd09d376b9"

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
