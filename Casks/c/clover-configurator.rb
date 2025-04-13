cask "clover-configurator" do
  version "5.28.0.1"
  sha256 :no_check

  url "https://mackie100projects.altervista.org/apps/cloverconf/download-new-build.php?version=global",
      referer: "https://mackie100projects.altervista.org/"
  name "Clover Configurator"
  desc "Clover EFI bootloader configuration helper"
  homepage "https://mackie100projects.altervista.org/clover-configurator/"

  livecheck do
    url "https://mackie100projects.altervista.org/apps/cloverconf/CCG/update-data-builds.xml"
    strategy :sparkle
  end

  auto_updates true

  app "Clover Configurator.app"

  zap trash: [
    "~/Library/Caches/org.altervista.mackie100projects.Clover-Configurator",
    "~/Library/Preferences/org.altervista.mackie100projects.Clover-Configurator.plist",
  ]

  caveats do
    requires_rosetta
  end
end
