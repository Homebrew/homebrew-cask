cask "termora" do
  arch arm: "aarch64", intel: "x86-64"

  version "1.0.5"
  sha256 arm:   "578623036678ca40c0694b43f14891dc8991b1d960981d98bd854db1376850a9",
         intel: "b0adcd5f012c4baf178bf2d93412cbb6cd5dc39441e1e87c5ed47ff0df5dc75a"

  url "https://github.com/TermoraDev/termora/releases/download/#{version}/termora-#{version}-osx-#{arch}.dmg"
  name "Termora"
  desc "Terminal emulator and SSH client"
  homepage "https://github.com/TermoraDev/termora"

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Termora.app"

  zap trash: "~/.termora"
end
