cask "petdex" do
  arch arm: "arm64", intel: "x64"

  version "0.9.1"
  sha256 arm:   "6eb74b775c635d20a6f9645afa680198b89491f1f8e974cff5b942a798740f8a",
         intel: "a9d86b7f87f7c1ab27c27a4b398376be47a7fb3d07cc1d1b9fcf0bbdc5fba58b"

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
