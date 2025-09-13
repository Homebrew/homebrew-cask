cask "font-iosevka-ss18" do
  version "33.3.0"
  sha256 "78fab83a6cda83d978ee17cd91f537532a41de80b9b383190bf35f0b7ef4603d"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS18-#{version}.zip"
  name "Iosevka SS18"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS18.ttc"

  # No zap stanza required
end
