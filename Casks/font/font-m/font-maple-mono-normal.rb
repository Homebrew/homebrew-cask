cask "font-maple-mono-normal" do
  version "7.8"
  sha256 "b6d1464f6c0ebd55df59ca2350b1416358c6309b47ed51ba87881737a57f05bd"

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
