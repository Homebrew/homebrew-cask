cask "termora" do
  arch arm: "aarch64", intel: "x86-64"

  version "1.0.12"
  sha256 arm:   "790749d4bb50bd2cb7f5e387f4d1350f4b7ccd1bba977c5496ea617d0df189a1",
         intel: "83757e01200fc5091d287750881135d896ac6c387a94672052f55bf7c1ef03f8"

  url "https://github.com/TermoraDev/termora/releases/download/#{version}/termora-#{version}-osx-#{arch}.dmg"
  name "Termora"
  desc "Terminal emulator and SSH client"
  homepage "https://github.com/TermoraDev/termora"

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Termora.app"

  zap trash: "~/.termora"
end
