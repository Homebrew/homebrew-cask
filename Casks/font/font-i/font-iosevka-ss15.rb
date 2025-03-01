cask "font-iosevka-ss15" do
  version "33.0.0"
  sha256 "d20a67bf2bc7bfa495845195acb1fd99da05cf9743be730efd2d26ad9981a443"

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
