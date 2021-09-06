cask "katrain" do
  version "1.9.3"
  sha256 "217cf11401986e2247a61fc417df21e4bcfae8c4e75f6c16c6d6a4ac6335d5cf"

  url "https://github.com/sanderland/katrain/releases/download/#{version}/KaTrainOSX.dmg"
  name "KaTrain"
  desc "Tool for analyzing games and playing go with AI feedback from KataGo"
  homepage "https://github.com/sanderland/katrain"

  depends_on formula: "katago" if Hardware::CPU.arm?

  app "KaTrain.app"

  zap trash: "~/.katrain"
end
