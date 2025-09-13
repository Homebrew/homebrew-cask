cask "font-iosevka-ss15" do
  version "33.3.0"
  sha256 "d0654e125a23262deda0b84bd618e2c9a3f183317c6e61e0063ddf23a3e98d91"

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
