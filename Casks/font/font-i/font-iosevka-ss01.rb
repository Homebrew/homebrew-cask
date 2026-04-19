cask "font-iosevka-ss01" do
  version "34.4.0"
  sha256 "fe8d1b209c7860d8829e437ca8efe79f4e27ed4b82d64f183100776262ee0bd5"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS01-#{version}.zip"
  name "Iosevka SS01"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS01.ttc"

  # No zap stanza required
end
