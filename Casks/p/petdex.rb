cask "petdex" do
  arch arm: "arm64", intel: "x64"

  version "0.10.0"
  sha256 arm:   "ce92326edc7b89216acc125799ffdec11c941e7ba54dd42a7b61e62dc01ef3b8",
         intel: "2c022d1941b409769c63fd165b417eb04b9ac60b6b4b4171a0aff62823c0f8bf"

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
