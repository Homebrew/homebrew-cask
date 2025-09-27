cask "font-iosevka-ss15" do
  version "33.3.1"
  sha256 "22c221fffe9d6b3cda4bb50f0381fcdb0b646d78ce32e31f00e4b105f7792d2a"

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
