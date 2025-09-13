cask "font-iosevka-aile" do
  version "33.3.0"
  sha256 "053213948119ee6e603cc11fe8a5a1d5f343d9c3d370f395e01779cf3ce59c72"

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
