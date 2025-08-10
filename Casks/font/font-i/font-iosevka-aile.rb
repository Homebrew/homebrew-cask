cask "font-iosevka-aile" do
  version "33.2.8"
  sha256 "7e2afc85bb3d45375bfcf0ea9eca9c5a6977fdcef4711879b95dba8d8f899528"

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
