cask "font-iosevka-ss17" do
  version "31.4.0"
  sha256 "c5584cb239f6c6b558c1a176b131060341b35c562e2f04375e69bec39602efdb"

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
