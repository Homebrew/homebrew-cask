cask "font-iosevka-ss10" do
  version "34.2.1"
  sha256 "0e22b29e7cce74357deb8070e440057e0cfad6f07fcf0236a2327fa08af99bf0"

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
