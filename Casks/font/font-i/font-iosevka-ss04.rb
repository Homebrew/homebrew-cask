cask "font-iosevka-ss04" do
  version "31.9.1"
  sha256 "a7a0ebd86f1e825a148a43ef12ed695d5689cb735613c2c0c95ee7d44e622f3a"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS04-#{version}.zip"
  name "Iosevka SS04"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS04.ttc"

  # No zap stanza required
end
