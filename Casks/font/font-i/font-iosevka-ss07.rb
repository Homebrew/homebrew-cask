cask "font-iosevka-ss07" do
  version "33.2.7"
  sha256 "252de7db420754268164f277fb4a67d1bc56ccc2f80104b05038762241dd54b8"

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
