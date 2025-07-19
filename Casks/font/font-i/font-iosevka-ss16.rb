cask "font-iosevka-ss16" do
  version "33.2.7"
  sha256 "cf83b268aa872bd4a47dc7c41a9df7374074568d8d4259e6e6a1e92639a9df7b"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS16-#{version}.zip"
  name "Iosevka SS16"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS16.ttc"

  # No zap stanza required
end
