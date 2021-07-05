cask "katrain" do
  version "1.9.2"
  sha256 "ad9cc517d1c4ac8799d0994c4be504b67ca6784e48175111c7d519dd491ff05a"

  url "https://github.com/sanderland/katrain/releases/download/#{version}/KaTrainOSX.dmg"
  name "KaTrain"
  desc "Tool for analyzing games and playing go with AI feedback from KataGo"
  homepage "https://github.com/sanderland/katrain"

  depends_on formula: "katago" if Hardware::CPU.arm?

  app "KaTrain.app"

  zap trash: "~/.katrain"
end
