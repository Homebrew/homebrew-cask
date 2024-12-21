cask "font-iosevka-ss13" do
  version "32.3.0"
  sha256 "9a9df112fc47f7fb92c1494de7f19b78d143f9147edbb8ae2f6a4e8275b7da0e"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS13-#{version}.zip"
  name "Iosevka SS13"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS13.ttc"

  # No zap stanza required
end
