cask "font-iosevka-ss10" do
  version "32.1.0"
  sha256 "6be80e1c58050cea6f7c101823df5a602d98c5b184bc343e0e25a7647a9112eb"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS10-#{version}.zip"
  name "Iosevka SS10"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS10.ttc"

  # No zap stanza required
end
