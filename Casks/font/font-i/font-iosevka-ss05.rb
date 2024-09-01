cask "font-iosevka-ss05" do
  version "31.5.0"
  sha256 "cbb217b5cc09581036989160597b85070755da1ced059d6cfef1d972a28c06e4"

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
