cask "font-iosevka-ss15" do
  version "33.3.6"
  sha256 "35541783e8c041e367a3c3a024f577b51b4c7fcf019b49b2c3bcf54208fe9548"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS15-#{version}.zip"
  name "Iosevka SS15"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS15.ttc"

  # No zap stanza required
end
