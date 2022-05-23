cask "katrain" do
  version "1.11"
  sha256 "bf6fd35440122d0c4024c9f890a95e041aba00e2729f5ff5f2614337e28ef72a"

  url "https://github.com/sanderland/katrain/releases/download/v#{version}/KaTrainOSX.dmg"
  name "KaTrain"
  desc "Tool for analyzing games and playing go with AI feedback from KataGo"
  homepage "https://github.com/sanderland/katrain"

  depends_on formula: "katago" if Hardware::CPU.arm?

  app "KaTrain.app"

  zap trash: "~/.katrain"
end
