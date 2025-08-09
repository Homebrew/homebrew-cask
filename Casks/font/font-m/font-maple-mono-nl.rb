cask "font-maple-mono-nl" do
  version "7.5"
  sha256 "07bfc8276d0ba2b5bbb81e60bce5e10c8b5a40e4bc63d7923b97c80e56acccd5"

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
