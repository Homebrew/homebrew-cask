cask "font-maple-mono" do
  version "7.5"
  sha256 "2a9b0c9b1f76708f690fcc9a014c93b6c945b6af02a59ee21125b7799b742f15"

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
