cask "font-maple-mono" do
  version "7.8"
  sha256 "1589bc7175ebdb5a9f0d1207423164a1f9bac58f09ffc9939376394f3f0e78a1"

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
