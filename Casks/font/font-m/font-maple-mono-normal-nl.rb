cask "font-maple-mono-normal-nl" do
  version "7.5"
  sha256 "9e92d61370697ba022deb824c783cd46ce6cd83eea0d338a56f5e2f3db326034"

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
