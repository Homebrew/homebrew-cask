cask "font-iosevka-ss05" do
  version "34.2.1"
  sha256 "aab1d2ddad60210d08bbbed654b641711149c90bc86f6584942d261a506b1e74"

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
