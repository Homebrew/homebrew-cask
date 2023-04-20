cask "katrain" do
  version "1.12.3"
  sha256 "7a95ed91970c92c3f0e3c5537d0c8c573f05be56ce18065916369e5aabaa67db"

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
