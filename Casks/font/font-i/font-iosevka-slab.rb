cask "font-iosevka-slab" do
  version "33.2.6"
  sha256 "3c8dfbc7c7c054d16aa0aa9f624947277e7e9f039b9ef70df85c3d961a1182b1"

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
