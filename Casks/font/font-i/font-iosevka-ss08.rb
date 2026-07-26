cask "font-iosevka-ss08" do
  version "34.8.0"
  sha256 "7a8094e6f005e76fef141f993febc2b130c11b47d8cc36dddb403d0ea00cc635"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS08-#{version}.zip"
  name "Iosevka SS08"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS08.ttc"

  # No zap stanza required
end
