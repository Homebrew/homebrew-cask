cask "font-iosevka-ss05" do
  version "31.1.0"
  sha256 "099e69dcb2dd0c8844cd4ccb075612ef035d2af1e2ce5a882339cc8eb633181c"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS05-#{version}.zip"
  name "Iosevka SS05"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS05.ttc"

  # No zap stanza required
end
