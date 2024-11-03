cask "font-iosevka-curly" do
  version "32.0.1"
  sha256 "364ce1594ca461f76e17294bf5077246eefca089b8b8427ae08e2260b1872c8f"

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
