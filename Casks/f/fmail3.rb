cask "fmail3" do
  version "2.5.2"
  sha256 "dd63c85f7604928f36ddb6cdf2deb9720ef97b8d055eeaf187b2703b856b1ca8"

  url "https://fmail3.appmac.fr/update/sparkle/FMail3-#{version}.dmg"
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
