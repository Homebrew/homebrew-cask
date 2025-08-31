cask "font-iosevka-ss08" do
  version "33.2.9"
  sha256 "22ff41b7dd211967b803b2148b2584849c27d453bf45ba96d0e74120d892660b"

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
