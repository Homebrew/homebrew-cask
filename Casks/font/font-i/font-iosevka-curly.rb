cask "font-iosevka-curly" do
  version "34.3.0"
  sha256 "11abf8cd80fd712eac6af436b474475107f6060627acd197caa40a426e39f000"

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
