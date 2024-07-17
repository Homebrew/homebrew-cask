cask "inav-configurator" do
  version "7.1.1"
  sha256 "9cbd1e741d97658a46c1ed37c372b9935737ffb987c80d7fdc47dbf46794379c"

  url "https://github.com/iNavFlight/inav-configurator/releases/download/#{version}/INAV-Configurator_macOS_#{version}.zip"
  name "INAV Configurator"
  desc "Configuration tool for the INAV flight control system"
  homepage "https://github.com/iNavFlight/inav-configurator/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "INAV Configurator.app"

  zap trash: [
    "~/Library/Application Support/inav-configurator",
    "~/Library/Caches/inav-configurator",
    "~/Library/Preferences/com.nw-builder.inav-configurator.plist",
    "~/Library/Saved Application State/com.nw-builder.inav-configurator.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
