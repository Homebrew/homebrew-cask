cask "font-iosevka-ss04" do
  version "31.8.0"
  sha256 "7280f8d24ee5714a2e8e99f6145154c5f6a7aa5ff2aaafc79a8cc6f879b80d77"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS04-#{version}.zip"
  name "Iosevka SS04"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS04.ttc"

  # No zap stanza required
end
