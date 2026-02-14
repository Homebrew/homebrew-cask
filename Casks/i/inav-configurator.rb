cask "inav-configurator" do
  arch arm: "arm64", intel: "x64"

  version "9.0.1"
  sha256 arm:   "66062a9a9dcf5fe13e45cd3956171102caa59da9090d5e945d5915ecacb5309b",
         intel: "3cd6cc777b8272e41cc2bb5addcdb2f7640d6a5eade3357580b022e7d68d1f1a"

  url "https://github.com/iNavFlight/inav-configurator/releases/download/#{version}/INAV-Configurator_MacOS_#{arch}_#{version}.zip"
  name "INAV Configurator"
  desc "Configuration tool for the INAV flight control system"
  homepage "https://github.com/iNavFlight/inav-configurator/"

  livecheck do
    url :url
    strategy :github_latest
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  depends_on macos: ">= :monterey"

  app "INAV Configurator.app"

  zap trash: [
    "~/Library/Application Support/inav-configurator",
    "~/Library/Caches/inav-configurator",
    "~/Library/Preferences/com.nw-builder.inav-configurator.plist",
    "~/Library/Saved Application State/com.nw-builder.inav-configurator.savedState",
  ]
end
