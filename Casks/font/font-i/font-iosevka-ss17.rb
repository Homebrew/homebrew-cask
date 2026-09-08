cask "font-iosevka-ss17" do
  version "34.8.1"
  sha256 "347d297ea90214238ab853190b8ef1525ab6922703f312c26272897bedab3b50"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS17-#{version}.zip"
  name "Iosevka SS17"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS17.ttc"

  # No zap stanza required
end
