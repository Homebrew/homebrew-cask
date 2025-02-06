cask "termora" do
  arch arm: "aarch64", intel: "x86-64"

  version "1.0.6"
  sha256 arm:   "727378faec1f80a5be58c2f18663207628c1476e3261746d9acf864004d053cc",
         intel: "2ad51e0adafd1ec9dec69daf67ced4be43712e4611f81a618aa07b5d7933e102"

  url "https://github.com/TermoraDev/termora/releases/download/#{version}/termora-#{version}-osx-#{arch}.dmg"
  name "Termora"
  desc "Terminal emulator and SSH client"
  homepage "https://github.com/TermoraDev/termora"

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Termora.app"

  zap trash: "~/.termora"
end
