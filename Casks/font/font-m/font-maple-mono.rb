cask "font-maple-mono" do
  version "7.6"
  sha256 "f144b65cbfd14c87961dab4778bbfbff25a26f956feeb74ec8d0b9aa8b115f0d"

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
