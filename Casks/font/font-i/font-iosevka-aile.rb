cask "font-iosevka-aile" do
  version "31.9.1"
  sha256 "7c2720875cc7e9a0224ffadd4ff17bb2a0e71037479a05ae35bd6115bc369522"

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
