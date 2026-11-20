cask "inav-configurator" do
  arch arm: "arm64", intel: "x64"

  version "9.1.1"
  sha256 arm:   "386d6845587286c66c37df3e6b919dd9c783b4cfb0f173aa203c6d150609f158",
         intel: "2d499766f9d8efb0f3524b20528c02c5168423889ab31b70c260e16d11497652"

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
