cask "termora" do
  arch arm: "aarch64", intel: "x86-64"

  version "1.0.7"
  sha256 arm:   "437fdc86677b8aff35b5c6a036c3b34273aa6c132c9044e1ac6ea95c64d4a08b",
         intel: "5e53a364bc908dba6027afcd9c73255b98bc3df22e9eb4c620d95b0cf9f42bad"

  url "https://github.com/TermoraDev/termora/releases/download/#{version}/termora-#{version}-osx-#{arch}.dmg"
  name "Termora"
  desc "Terminal emulator and SSH client"
  homepage "https://github.com/TermoraDev/termora"

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Termora.app"

  zap trash: "~/.termora"
end
