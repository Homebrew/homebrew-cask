cask "termora" do
  arch arm: "aarch64", intel: "x86-64"

  version "1.0.10"
  sha256 arm:   "0df0ab98e178cbd689edb9c42c9ad06df96ac09603d6b1235605aba271b4fb23",
         intel: "ad67898db22c704c37fadfcfb9a68c546fe268b233bf1b49cfe68a11873fc476"

  url "https://github.com/TermoraDev/termora/releases/download/#{version}/termora-#{version}-osx-#{arch}.dmg"
  name "Termora"
  desc "Terminal emulator and SSH client"
  homepage "https://github.com/TermoraDev/termora"

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Termora.app"

  zap trash: "~/.termora"
end
