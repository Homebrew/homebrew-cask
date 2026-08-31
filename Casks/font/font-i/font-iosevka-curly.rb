cask "font-iosevka-curly" do
  version "34.8.1"
  sha256 "df20ce326b36185c583bc35768de8a9d6f992966a2cd737b239561cd0cb320b1"

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
