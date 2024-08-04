cask "font-iosevka-slab" do
  version "31.1.0"
  sha256 "32fcce2fa395a6e4c442de9245986ece2ca7c3adb0db240f10b5ebfa2e5ac4b7"

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
