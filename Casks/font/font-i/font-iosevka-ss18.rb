cask "font-iosevka-ss18" do
  version "32.0.1"
  sha256 "b10e758c192a5d2aa7a5d2839e584746dadf0b5b79d91c0c8dbafb752942e519"

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
