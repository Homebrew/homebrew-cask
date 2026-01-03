cask "font-iosevka-ss17" do
  version "34.0.0"
  sha256 "ee4225046e9509ba77fd5505f6a1940b7138410f83bf84b974751bc15191c458"

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
