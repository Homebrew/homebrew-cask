cask "font-iosevka-aile" do
  version "34.1.0"
  sha256 "bec2efb67ad877c140f3a645ce2969841022db055d5a8376a6f73dacea9bb5e1"

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
