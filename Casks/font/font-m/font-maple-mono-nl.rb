cask "font-maple-mono-nl" do
  version "7.6"
  sha256 "8ef51f2e2f832d308791d36e28c81c569e3d30c791895563c1d2155cd28e6987"

  url "https://github.com/subframe7536/Maple-font/releases/download/v#{version}/MapleMonoNL-Variable.zip",
      verified: "github.com/subframe7536/Maple-font/"
  name "Maple Mono NL"
  homepage "https://font.subf.dev/en/"

  livecheck do
    cask "font-maple-mono"
  end

  font "MapleMonoNL-Italic[wght].ttf"
  font "MapleMonoNL[wght].ttf"

  # No zap stanza required
end
