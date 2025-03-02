cask "font-iosevka-aile" do
  version "33.0.1"
  sha256 "910ee6ab1aa9688dd9058d7a0ee2de8a78365cb19ac8522b13545430c3169f62"

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
