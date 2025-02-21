cask "termora" do
  arch arm: "aarch64", intel: "x86-64"

  version "1.0.8"
  sha256 arm:   "be8577a82b6a6eee0d292e6f109df19e8f0e70eb009454ac673b68d4fcdd1696",
         intel: "168b24f729745ab1d4010ad3e8d5ee20874aee996a2a425e27268a479cc28020"

  url "https://github.com/TermoraDev/termora/releases/download/#{version}/termora-#{version}-osx-#{arch}.dmg"
  name "Termora"
  desc "Terminal emulator and SSH client"
  homepage "https://github.com/TermoraDev/termora"

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Termora.app"

  zap trash: "~/.termora"
end
