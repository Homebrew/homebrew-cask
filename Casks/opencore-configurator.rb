cask "opencore-configurator" do
  version "2.56.0.0"
  sha256 :no_check

  url "https://mackie100projects.altervista.org/apps/opencoreconf/download-new-build.php?version=last",
      referer: "https://mackie100projects.altervista.org/"
  name "OpenCore Configurator"
  desc "OpenCore EFI bootloader configuration helper"
  homepage "https://mackie100projects.altervista.org/opencore-configurator/"

  livecheck do
    url "https://mackie100projects.altervista.org/download-opencore-configurator/"
    regex(/OpenCore\s+Configurator\s+v?(\d+(?:\.\d+)+)/i)
  end

  auto_updates true

  app "OpenCore Configurator.app"

  zap trash: [
    "~/Library/Caches/org.altervista.mackie100projects.OpenCore-Configurator",
    "~/Library/Preferences/org.altervista.mackie100projects.OpenCore-Configurator.plist",
  ]
end
