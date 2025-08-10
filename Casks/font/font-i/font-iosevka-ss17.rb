cask "font-iosevka-ss17" do
  version "33.2.8"
  sha256 "ab7d636dc3516b8844c7ec6b8654e93983f8219e96b8b7992d63b6d852b8b90a"

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
