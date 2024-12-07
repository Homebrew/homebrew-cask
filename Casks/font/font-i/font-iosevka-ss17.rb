cask "font-iosevka-ss17" do
  version "32.2.1"
  sha256 "7978ad1ae6a809ee020cee56aea2a2a291e97521424fa9012e2b6a285e8ae320"

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
