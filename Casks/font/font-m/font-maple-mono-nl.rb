cask "font-maple-mono-nl" do
  version "7.8"
  sha256 "2a1253353763a114085a9fa606c9eb6908cf5b2cc79ad8e72c7bf3675dc04a33"

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
