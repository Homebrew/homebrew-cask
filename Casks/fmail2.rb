cask "fmail2" do
  # NOTE: "2" is not a version number, but an intrinsic part of the product name
  version "1.7.6"
  sha256 "c012fd591e3f8202e9e3b9ad39bd12156a56f86c9a5968531345e0481ea1dd4f"

  url "https://arievanboxel.fr/fmail2/sparkle/FMail2_#{version.no_dots}.zip",
      verified: "arievanboxel.fr/fmail2/sparkle/"
  name "FMail2"
  desc "Unofficial native application for Fastmail"
  homepage "https://fmail-app.fr/"

  livecheck do
    url "https://arievanboxel.fr/fmail2/sparkle/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "FMail2.app"

  zap trash: [
    "~/Library/Application Scripts/fr.arievanboxel.FMail2",
    "~/Library/Containers/fr.arievanboxel.FMail2",
  ]
end
