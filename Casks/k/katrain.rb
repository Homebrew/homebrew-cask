cask "katrain" do
  version "1.14.0"
  sha256 "38cfe45fd4440983d3cbf4ca1305fa977c8479a16f6696bd22742ad451fa4cd7"

  on_arm do
    depends_on formula: "katago"
  end

  url "https://github.com/sanderland/katrain/releases/download/v#{version}/KaTrainOSX.dmg"
  name "KaTrain"
  desc "Tool for analyzing games and playing go with AI feedback from KataGo"
  homepage "https://github.com/sanderland/katrain"

  app "KaTrain.app"

  zap trash: "~/.katrain"

  caveats do
    requires_rosetta
  end
end
