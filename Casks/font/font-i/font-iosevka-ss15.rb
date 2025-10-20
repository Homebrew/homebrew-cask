cask "font-iosevka-ss15" do
  version "33.3.3"
  sha256 "1941e36e67c1a41a99c33224385d04281cbb8d1b46e3bf933dba6e5b0b461487"

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
