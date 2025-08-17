cask "fmail3" do
  version "1.1.7"
  sha256 "7128b3f123efa5ae08b4c94b0943e9f587fc312fbff44fe2ebf7d9eb5aec51ff"

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
