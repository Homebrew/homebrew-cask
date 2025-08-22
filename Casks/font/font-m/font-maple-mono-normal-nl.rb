cask "font-maple-mono-normal-nl" do
  version "7.6"
  sha256 "29c583c72a76fe475e8622f7fde135237deca3ea51ee2165e334ac292ca0b161"

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
