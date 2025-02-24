cask "termora" do
  arch arm: "aarch64", intel: "x86-64"

  version "1.0.9"
  sha256 arm:   "4a5a437a8caf2ee94c045b34e7079c1fb3cae2b2b92d1b362ac022ed8180be74",
         intel: "1ebbc84fba6d0f05a6f0f1b38f1ba5d30aadbe3ff01a5a943589af0b6fbbb0e1"

  url "https://github.com/TermoraDev/termora/releases/download/#{version}/termora-#{version}-osx-#{arch}.dmg"
  name "Termora"
  desc "Terminal emulator and SSH client"
  homepage "https://github.com/TermoraDev/termora"

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Termora.app"

  zap trash: "~/.termora"
end
