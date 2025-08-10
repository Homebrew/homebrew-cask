cask "font-maple-mono-normal" do
  version "7.5"
  sha256 "17c7baf8ec9d73797e07030b513288fd60019e143669a30cb0cf0c174ee412da"

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
