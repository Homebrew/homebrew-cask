cask "font-iosevka-ss12" do
  version "33.2.4"
  sha256 "51a061320de6744aebdee0ca56d6140ed936aecca333c0509bfb7969b182594c"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS12-#{version}.zip"
  name "Iosevka SS12"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS12.ttc"

  # No zap stanza required
end
