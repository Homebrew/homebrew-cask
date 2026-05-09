cask "font-iosevka-ss14" do
  version "34.5.0"
  sha256 "25941b948392e9b070a9f54db35383edf65aadb3ee3a9c31d5e4d460d75e7c22"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS14-#{version}.zip"
  name "Iosevka SS14"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS14.ttc"

  # No zap stanza required
end
