cask "fmail" do
  version "2.6.7,114"
  sha256 "159c1d26a147eaf7cd180f866d4b0524f2d69e2d076c5c04a139611f61d8347f"

  url "https://arievanboxel.fr/fmail/sparkle/FMail_#{version.csv.first.no_dots}.zip"
  name "FMail"
  desc "Unofficial native application for Fastmail"
  homepage "https://arievanboxel.fr/fmail/en/"

  livecheck do
    url "https://arievanboxel.fr/fmail/sparkle/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "FMail.app"

  uninstall quit: "fr.arievanboxel.fmail"

  zap trash: [
    "~/Library/Application Scripts/fr.arievanboxel.FMail",
    "~/Library/Containers/fr.arievanboxel.FMail",
  ]
end
