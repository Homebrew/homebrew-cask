cask "petdex" do
  arch arm: "arm64", intel: "x64"

  version "0.8.0"
  sha256 arm:   "dc33a6e61fbcf2acb671e3b686e059ea45e6308e28118543d6a6e4318bd17a4d",
         intel: "9377d0e7d5482a21c1c336361e815e6deafc00702d1d20a8ee3fecdc4313bbb3"

  url "https://github.com/crafter-station/petdex/releases/download/desktop-v#{version}/Petdex-#{arch}.dmg"
  name "Petdex"
  desc "Desktop pet that reflects coding agent activity"
  homepage "https://petdex.dev/"

  livecheck do
    url :url
    regex(/^desktop[._-]v?(\d+(?:\.\d+)+)$/i)
  end

  depends_on macos: :big_sur

  app "Petdex.app"

  uninstall quit: "dev.petdex.desktop-native"

  zap trash: [
    "~/.petdex",
    "~/Library/Application Support/dev.petdex.desktop-native",
    "~/Library/Logs/dev.petdex.desktop-native",
  ]
end
