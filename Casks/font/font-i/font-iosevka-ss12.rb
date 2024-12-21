cask "font-iosevka-ss12" do
  version "32.3.0"
  sha256 "4644acabf8c3325c7b4a3f5edaf516bb33329d182392250bded4d89c7ba008b0"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS12-#{version}.zip"
  name "Iosevka SS12"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS12.ttc"

  # No zap stanza required
end
