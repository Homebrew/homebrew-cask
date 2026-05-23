cask "font-iosevka-ss10" do
  version "34.6.0"
  sha256 "395fff67624be65f1cafdc23a4cff46a7d998ae49f5fb5f65db706661b4ff976"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS10-#{version}.zip"
  name "Iosevka SS10"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS10.ttc"

  # No zap stanza required
end
