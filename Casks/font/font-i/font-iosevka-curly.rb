cask "font-iosevka-curly" do
  version "33.3.0"
  sha256 "734a1ed4b057ea25741a21c1866ea6130fb4e7cba75b62beaef7698f4307db23"

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
