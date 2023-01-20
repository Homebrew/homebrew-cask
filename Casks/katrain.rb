cask "katrain" do
  version "1.12.1"
  sha256 "d0f5f04a2e577432121e47f1e127f1f266d058ce57c21a6b64949796b8719f33"

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
