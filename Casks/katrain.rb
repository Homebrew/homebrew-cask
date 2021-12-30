cask "katrain" do
  version "1.10.1"
  sha256 "6bd26177ca780937901ef9ce6b6e61471624423e8b2579e93712d3290b6ab053"

  url "https://github.com/sanderland/katrain/releases/download/#{version}/KaTrain.dmg"
  name "KaTrain"
  desc "Tool for analyzing games and playing go with AI feedback from KataGo"
  homepage "https://github.com/sanderland/katrain"

  depends_on formula: "katago" if Hardware::CPU.arm?

  app "KaTrain.app"

  zap trash: "~/.katrain"
end
