cask "clover-configurator" do
  version "5.28.0.0"
  sha256 :no_check

  url "https://mackie100projects.altervista.org/apps/cloverconf/download-new-build.php?version=global",
      referer: "https://mackie100projects.altervista.org/"
  name "Clover Configurator"
  desc "Clover EFI bootloader configuration helper"
  homepage "https://mackie100projects.altervista.org/clover-configurator/"

  livecheck do
    url "https://mackie100projects.altervista.org/download-clover-configurator/"
    regex(/Version:\s+(\d+(?:\.\d+)*)/i)
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
