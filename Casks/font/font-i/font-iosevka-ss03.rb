cask "font-iosevka-ss03" do
  version "33.2.0"
  sha256 "c87d60a884935e0f0d14e3616f3bc3672e722e2a3802170e48bd9674d0059e25"

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
