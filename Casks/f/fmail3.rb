cask "fmail3" do
  version "2.0.1"
  sha256 "51b9308278efefbc198d8bc1196e6998c270f9f322576c36bc214b77029462ed"

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
