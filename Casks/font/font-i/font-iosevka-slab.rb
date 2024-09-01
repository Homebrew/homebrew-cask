cask "font-iosevka-slab" do
  version "31.5.0"
  sha256 "72f4175aa1ee0f05ab32e5c03016f80f92b9bd05fa71a8e3e23523d2a6b60920"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSlab-#{version}.zip"
  name "Iosevka Slab"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSlab.ttc"

  # No zap stanza required
end
