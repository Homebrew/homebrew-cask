cask "font-iosevka-ss11" do
  version "33.3.1"
  sha256 "44773ac50757409d366439cf4242a46397ec7f513a2227c51e77aa8b753c30a0"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS11-#{version}.zip"
  name "Iosevka SS11"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS11.ttc"

  # No zap stanza required
end
