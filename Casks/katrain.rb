cask "katrain" do
  version "1.8.3"
  sha256 "c092602e5cadc311a119d7168186c6441e914ba53b9915ac534d9bd470c37e40"

  url "https://github.com/sanderland/katrain/releases/download/#{version}/KaTrainOSX.zip"
  name "KaTrain"
  desc "Tool for analyzing games and playing go with AI feedback from KataGo"
  homepage "https://github.com/sanderland/katrain"

  app "KaTrain.app"

  zap trash: "~/.katrain"
end
