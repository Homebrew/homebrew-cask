cask "fmail2" do
  # NOTE: "2" is not a version number, but an intrinsic part of the product name
  version "1.6.4,57"
  sha256 "ed3833bde407558ed3728c815fbc58601c02827b7b35a1d61d99ea8748dff2e2"

  url "https://arievanboxel.fr/fmail2/sparkle/FMail2_#{version.csv.first.no_dots}.zip",
      verified: "arievanboxel.fr"
  name "fmail2"
  desc "Unofficial 'light' native application for Fastmail"
  homepage "https://fmail-app.fr/"

  livecheck do
    url "https://arievanboxel.fr/fmail2/sparkle/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "FMail2.app"

  zap trash: [
    "~/Library/Application Scripts/fr.arievanboxel.FMail2",
    "~/Library/Containers/fr.arievanboxel.FMail2",
  ]
end
