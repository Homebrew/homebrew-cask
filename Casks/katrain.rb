cask "katrain" do
  version "1.12.2"
  sha256 "57d2270f7b0043778ed78bdcffaac59555f5c5b09fc89fc3a2b3cb50e6b804d3"

  url "https://github.com/sanderland/katrain/releases/download/v#{version}/KaTrainOSX.dmg"
  name "KaTrain"
  desc "Tool for analyzing games and playing go with AI feedback from KataGo"
  homepage "https://github.com/sanderland/katrain"

  on_arm do
    depends_on formula: "katago"
  end

  app "KaTrain.app"

  zap trash: "~/.katrain"
end
