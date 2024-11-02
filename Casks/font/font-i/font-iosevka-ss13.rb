cask "font-iosevka-ss13" do
  version "32.0.0"
  sha256 "1821d8e7aa6b2fb2770de3c08657140f404bec18733c38176820cb71e48910b1"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS13-#{version}.zip"
  name "Iosevka SS13"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS13.ttc"

  # No zap stanza required
end
