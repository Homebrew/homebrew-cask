cask "font-maple-mono-normal-nl" do
  version "7.8"
  sha256 "abbae9ed3fbfd1ef1e0ef4648b9a99e761e6f84a267905e8e1e6dab6aff846b1"

  url "https://github.com/subframe7536/Maple-font/releases/download/v#{version}/MapleMonoNormalNL-Variable.zip",
      verified: "github.com/subframe7536/Maple-font/"
  name "Maple Mono Normal NL"
  homepage "https://font.subf.dev/en/"

  livecheck do
    cask "font-maple-mono"
  end

  font "MapleMonoNormalNL-Italic[wght].ttf"
  font "MapleMonoNormalNL[wght].ttf"

  # No zap stanza required
end
