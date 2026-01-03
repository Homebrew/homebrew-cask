cask "font-iosevka-ss12" do
  version "34.0.0"
  sha256 "e03e5fab5fee5dda10516189a20147f45dcde3a400c450809cb849af99c52447"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS12-#{version}.zip"
  name "Iosevka SS12"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS12.ttc"

  # No zap stanza required
end
