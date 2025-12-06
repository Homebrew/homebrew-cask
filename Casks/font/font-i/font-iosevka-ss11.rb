cask "font-iosevka-ss11" do
  version "33.3.6"
  sha256 "48d13f102fd8b183ec63818c338a5688fa2be015c57024a06fbedb9203276dfb"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS11-#{version}.zip"
  name "Iosevka SS11"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS11.ttc"

  # No zap stanza required
end
