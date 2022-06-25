cask "katrain" do
  version "1.11.2fixes-for-osx"
  sha256 "deef0933f88ca666201a0bc3ea882bf1e40c0b4d166384d902e1ffe72181c102"

  url "https://github.com/sanderland/katrain/releases/download/v#{version}/KaTrainOSX.zip"
  name "KaTrain"
  desc "Tool for analyzing games and playing go with AI feedback from KataGo"
  homepage "https://github.com/sanderland/katrain"

  depends_on formula: "katago" if Hardware::CPU.arm?

  app "KaTrain.app"

  zap trash: "~/.katrain"
end
