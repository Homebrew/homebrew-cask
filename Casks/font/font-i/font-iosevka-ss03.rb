cask "font-iosevka-ss03" do
  version "34.4.0"
  sha256 "342cb10ec0a119d9f963ba2e3fd35f736810f9d7011ac004c69e4a87aa51118b"

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
