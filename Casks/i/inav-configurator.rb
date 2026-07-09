cask "inav-configurator" do
  arch arm: "arm64", intel: "x64"

  version "9.1.0"
  sha256 arm:   "4b2bebac0b8fff13d5a16390248d8391becfb0d0887c2029b32ebfd33ccf0552",
         intel: "5e0e2c41b30a4bce29329680dfd8b8bf4dd448a0d7145a32b89383d3ffd1a35c"

  url "https://github.com/iNavFlight/inav-configurator/releases/download/#{version}/INAV-Configurator_MacOS_#{arch}_#{version}.zip"
  name "INAV Configurator"
  desc "Configuration tool for the INAV flight control system"
  homepage "https://github.com/iNavFlight/inav-configurator/"

  livecheck do
    url :url
    strategy :github_latest
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  depends_on macos: :monterey

  app "INAV Configurator.app"

  zap trash: [
    "~/Library/Application Support/inav-configurator",
    "~/Library/Caches/inav-configurator",
    "~/Library/Preferences/com.nw-builder.inav-configurator.plist",
    "~/Library/Saved Application State/com.nw-builder.inav-configurator.savedState",
  ]
end
