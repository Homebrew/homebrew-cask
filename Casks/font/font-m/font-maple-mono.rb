cask "font-maple-mono" do
  version "7.9"
  sha256 "b9e57677cc4ec069ce178bd965d66cd14bd26c12e37d89d786ff959339bf8c93"

  url "https://github.com/subframe7536/Maple-font/releases/download/v#{version}/MapleMono-Variable.zip",
      verified: "github.com/subframe7536/Maple-font/"
  name "Maple Mono"
  homepage "https://font.subf.dev/en/"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+(?:-beta\d+)?)$/i)
    strategy :github_latest
  end

  font "MapleMono-Italic[wght].ttf"
  font "MapleMono[wght].ttf"

  # No zap stanza required
end
