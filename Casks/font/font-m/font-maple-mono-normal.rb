cask "font-maple-mono-normal" do
  version "7.7"
  sha256 "7b3a191015890cb9cf3e12f560dbbc5bd894306f464aa61a253dabcdd9254891"

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
