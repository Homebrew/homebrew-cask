cask "font-maple-mono-normal" do
  version "7.9"
  sha256 "d6e77dcce1c5d68636392fd4d77a422e74602c31f465de63d5e222301fc5f637"

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
