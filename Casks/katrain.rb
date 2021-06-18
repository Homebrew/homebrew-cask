cask "katrain" do
  version "1.8.4"
  sha256 "529c6bc7e6469e6cd82a927aa1c6282053b1f13f8f4ad1fa26ed721b5a201f69"

  url "https://github.com/sanderland/katrain/releases/download/#{version}/KaTrainOSX.zip"
  name "KaTrain"
  desc "Tool for analyzing games and playing go with AI feedback from KataGo"
  homepage "https://github.com/sanderland/katrain"

  depends_on formula: "katago" if Hardware::CPU.arm?

  app "KaTrain.app"

  zap trash: "~/.katrain"
end
