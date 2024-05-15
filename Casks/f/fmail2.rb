cask "fmail2" do
  # NOTE: "2" is not a version number, but an intrinsic part of the product name
  version "2.6.7"
  sha256 "eba8872bdbe1ff62ded870c2fbe162784af3c5a3d05ea66dea04ca0e7715ade2"

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
