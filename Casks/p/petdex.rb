cask "petdex" do
  arch arm: "arm64", intel: "x64"

  version "0.9.2"
  sha256 arm:   "a22e07c20c1fa8b15304e7734982550f54e1cf72a4ff794feb99e59a832477c2",
         intel: "d1a85167e78d5a7e2f59a642ed99d92938aee4fc2a956b07a91784452825ee6d"

  url "https://github.com/crafter-station/petdex/releases/download/desktop-v#{version}/Petdex-#{arch}.dmg"
  name "Petdex"
  desc "Desktop pet that reflects coding agent activity"
  homepage "https://petdex.dev/"

  livecheck do
    url :url
    regex(/^desktop[._-]v?(\d+(?:\.\d+)+)$/i)
  end

  depends_on :macos

  app "Petdex.app"

  uninstall quit: "dev.petdex.desktop-native"

  zap trash: [
    "~/.petdex",
    "~/Library/Application Support/dev.petdex.desktop-native",
    "~/Library/Logs/dev.petdex.desktop-native",
  ]
end
