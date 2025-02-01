cask "font-iosevka-ss03" do
  version "32.5.0"
  sha256 "972382ebba903411625e31041a1f21aef465f07e9c79da3c5c82b8e39deddf83"

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
