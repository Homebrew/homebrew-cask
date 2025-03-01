cask "font-iosevka-ss01" do
  version "33.0.0"
  sha256 "11e9e5cfc539c136260ddc625887c83a6073abb9c24aad06432f0b501ca0d5ed"

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
