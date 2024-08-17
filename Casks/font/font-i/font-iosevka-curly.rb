cask "font-iosevka-curly" do
  version "31.3.0"
  sha256 "8b857416ec0d5495329c23e5536f141914af1c0c2af96c3f09c4488b4a4718f1"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaCurly-#{version}.zip"
  name "Iosevka Curly"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaCurly.ttc"

  # No zap stanza required
end
