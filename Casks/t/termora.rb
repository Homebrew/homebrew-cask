cask "termora" do
  arch arm: "aarch64", intel: "x86-64"

  version "1.0.4"
  sha256 arm:   "9cbb3fcc0b5865de47497edb07a7b6107c0ace132fd600d644e0a761a322a9aa",
         intel: "12b29e6b898daf8d6c249ffb9d6c30baa84674d454cfe22bc033a97cb13aee33"

  url "https://github.com/TermoraDev/termora/releases/download/#{version}/termora-#{version}-osx-#{arch}.dmg"
  name "Termora"
  desc "Terminal emulator and SSH client"
  homepage "https://github.com/TermoraDev/termora"

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Termora.app"

  zap trash: "~/.termora"
end
