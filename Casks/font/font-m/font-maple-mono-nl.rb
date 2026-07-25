cask "font-maple-mono-nl" do
  version "7.9"
  sha256 "bfc2d8a46050e8d73da7c09a59badac1ec6ebd2cff6783548f9005ce5425b84f"

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
