cask "font-iosevka-ss15" do
  version "33.2.6"
  sha256 "81c70d968a60c0b9b929a1d9205c48571962555b3773057d4c5792540f969b81"

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
