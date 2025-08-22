cask "font-maple-mono-normal" do
  version "7.6"
  sha256 "084d571afd0095b5d15bdb91cd728de297101ea2b882da0e43260b3374b8419a"

  url "https://github.com/subframe7536/Maple-font/releases/download/v#{version}/MapleMonoNormal-Variable.zip",
      verified: "github.com/subframe7536/Maple-font/"
  name "Maple Mono Normal"
  homepage "https://font.subf.dev/en/"

  livecheck do
    cask "font-maple-mono"
  end

  font "MapleMonoNormal-Italic[wght].ttf"
  font "MapleMonoNormal[wght].ttf"

  # No zap stanza required
end
