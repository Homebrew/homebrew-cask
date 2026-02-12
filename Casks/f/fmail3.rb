cask "fmail3" do
  version "1.5.3"
  sha256 "f8c1bb35279f9810fb3cd433f2d298de164c88b189758a93c5e005b7764f2296"

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
