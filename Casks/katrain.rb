cask "katrain" do
  version "1.12"
  sha256 "88db4f92b14d3aa671955e6567b2edc6a39004950a3c97953520fbf5b83202e6"

  url "https://github.com/sanderland/katrain/releases/download/v#{version}/KaTrain.dmg"
  name "KaTrain"
  desc "Tool for analyzing games and playing go with AI feedback from KataGo"
  homepage "https://github.com/sanderland/katrain"

  on_arm do
    depends_on formula: "katago"
  end

  app "KaTrain.app"

  zap trash: "~/.katrain"
end
