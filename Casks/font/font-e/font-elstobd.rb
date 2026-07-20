cask "font-elstobd" do
  version "3.003"
  sha256 "719519489d44ed5cb87e6db4f4a44dab6933dde93d4b8d5926df2981878b8150"

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
