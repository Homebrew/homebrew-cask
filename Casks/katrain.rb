cask "katrain" do
  version "1.13.0"
  sha256 "35db2a4da2c22a431ef27cfe3d3271a9a231695af7fb2ccbfcb9d5c301bb3d86"

  on_arm do
    depends_on formula: "katago"
  end

  url "https://github.com/sanderland/katrain/releases/download/v#{version}/KaTrainOSX.dmg"
  name "KaTrain"
  desc "Tool for analyzing games and playing go with AI feedback from KataGo"
  homepage "https://github.com/sanderland/katrain"

  app "KaTrain.app"

  zap trash: "~/.katrain"
end
