cask "betaflight-configurator" do
  version "10.9.0"
  sha256 "e5c6cbcdd513fe33ff3a357ff6a19c4914bfb8f40b10cbb109e7a5752d3e33a7"

  url "https://github.com/betaflight/betaflight-configurator/releases/download/#{version}/betaflight-configurator_#{version}_macOS.dmg"
  name "Betaflight-Configurator"
  desc "Configuration tool for the Betaflight firmware"
  homepage "https://github.com/betaflight/betaflight-configurator"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Betaflight Configurator.app"

  zap trash: [
    "~/Library/Application Support/betaflight-configurator",
    "~/Library/Caches/betaflight-configurator",
    "~/Library/Preferences/com.nw-builder.betaflight-configurator.plist",
    "~/Library/Saved Application State/com.nw-builder.betaflight-configurator.savedState",
  ]
end
