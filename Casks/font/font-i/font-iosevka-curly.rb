cask "font-iosevka-curly" do
  version "33.3.5"
  sha256 "f2168ca681e8a973635db5a5aac41659f36dc2ef32c361296c56369f58ce82a1"

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
