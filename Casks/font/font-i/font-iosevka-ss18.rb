cask "font-iosevka-ss18" do
  version "34.7.0"
  sha256 "bc532fc003b07a986f65993f86190c618238fd2b84811ed4e2c07eb2738d044e"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS18-#{version}.zip"
  name "Iosevka SS18"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS18.ttc"

  # No zap stanza required
end
