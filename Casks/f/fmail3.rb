cask "fmail3" do
  version "2.0.5"
  sha256 "2643688c53b6d397794b98415c55c31fbb8bf372e80161ef632357e9b86a2419"

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
