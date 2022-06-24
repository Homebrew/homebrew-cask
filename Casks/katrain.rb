cask "katrain" do
  version "1.11.2"
  sha256 "b15fb01236c4578141c432b78b977232a57fefb68913b85a7118c8f0e35a0737"

  url "https://github.com/sanderland/katrain/releases/download/v#{version}/KaTrainOSX.zip"
  name "KaTrain"
  desc "Tool for analyzing games and playing go with AI feedback from KataGo"
  homepage "https://github.com/sanderland/katrain"

  depends_on formula: "katago" if Hardware::CPU.arm?

  app "KaTrain.app"

  zap trash: "~/.katrain"
end
