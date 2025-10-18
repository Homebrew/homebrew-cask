cask "font-iosevka-aile" do
  version "33.3.2"
  sha256 "bb09add8fbeeb2a5f09f95b1da79c01628bc4f710d13c1487e73b6917fc87cb0"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaAile-#{version}.zip"
  name "Iosevka Aile"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaAile.ttc"

  # No zap stanza required
end
