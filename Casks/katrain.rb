cask "katrain" do
  version "1.11.1"
  sha256 "47e46df65ae5752e517fc8be9a78e7f898278eca3128899083efdf263b0f664a"

  url "https://github.com/sanderland/katrain/releases/download/v#{version}/KaTrainOSX.zip"
  name "KaTrain"
  desc "Tool for analyzing games and playing go with AI feedback from KataGo"
  homepage "https://github.com/sanderland/katrain"

  depends_on formula: "katago" if Hardware::CPU.arm?

  app "KaTrain.app"

  zap trash: "~/.katrain"
end
