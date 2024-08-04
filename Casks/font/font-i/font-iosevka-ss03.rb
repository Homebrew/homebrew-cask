cask "font-iosevka-ss03" do
  version "31.1.0"
  sha256 "37e3b258e61e2e4e1ba1b9b44e1b7cbfa1e8a2fcc6064e09346a53f4df7978ca"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS03-#{version}.zip"
  name "Iosevka SS03"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS03.ttc"

  # No zap stanza required
end
