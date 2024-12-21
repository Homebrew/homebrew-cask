cask "font-iosevka-ss07" do
  version "32.3.0"
  sha256 "6f81f978180386ec16af29b1c35ce020ff69c298447de9884f2b50a2d9ecac7c"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS07-#{version}.zip"
  name "Iosevka SS07"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS07.ttc"

  # No zap stanza required
end
