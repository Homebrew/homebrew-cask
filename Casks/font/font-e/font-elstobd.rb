cask "font-elstobd" do
  version "3.002"
  sha256 "22b1a96272712847bb2a1f0406bade83045b1fdafd6b0ccce0541e1826746aa0"

  url "https://github.com/psb1558/Elstob-font/releases/download/v#{version}/Elstob_#{version}.zip"
  name "ElstobD"
  homepage "https://github.com/psb1558/Elstob-font"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "Elstob_font/variable/Elstob-Italic.ttf"
  font "Elstob_font/variable/Elstob.ttf"

  # No zap stanza required
end
