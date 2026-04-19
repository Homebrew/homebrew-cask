cask "font-iosevka-curly" do
  version "34.4.0"
  sha256 "2a327d52965f432d9490bbf1ceb1c526caadcb330265b2b15004c1c43186c1b8"

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
