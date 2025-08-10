cask "font-iosevka-ss05" do
  version "33.2.8"
  sha256 "82ad343f6a023366b9e38b460a4cd372487fc19e78c18507e18a6ba7732600e8"

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
