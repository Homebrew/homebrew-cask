cask "font-iosevka-curly" do
  version "33.2.9"
  sha256 "2e381da9dbb910ab956f4a202bb449829886194fa854dcde875fd58a016e09d9"

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
