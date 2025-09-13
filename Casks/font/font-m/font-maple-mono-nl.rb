cask "font-maple-mono-nl" do
  version "7.7"
  sha256 "f15e58d657a490c9f56060ba1097a0b735c6d1380141112899329a132a5b3c51"

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
