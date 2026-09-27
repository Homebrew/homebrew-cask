cask "font-iosevka-ss07" do
  version "34.9.0"
  sha256 "ac3f1d40758b85ebb8c1b9db088126ec6dcc6571241b26342273fdab7c4222c2"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS07-#{version}.zip"
  name "Iosevka SS07"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS07.ttc"

  # No zap stanza required
end
