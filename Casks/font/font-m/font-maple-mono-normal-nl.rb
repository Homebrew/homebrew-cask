cask "font-maple-mono-normal-nl" do
  version "7.7"
  sha256 "7f59731bc5aa6a4f44d0e21cb07a648f3cecc73576c34899773c5266485467a7"

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
