cask "font-maple-mono-normal-nl" do
  version "7.9"
  sha256 "fa7423c5377a587d2008209431ae16afaa49cee7dd75ca70c6c7f8632ca484b9"

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
