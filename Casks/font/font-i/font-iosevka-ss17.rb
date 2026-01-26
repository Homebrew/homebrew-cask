cask "font-iosevka-ss17" do
  version "34.1.0"
  sha256 "50562b5edf20aa3820840b71c091b8f7afc50de5c299b1dd9ddde94989c98484"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS17-#{version}.zip"
  name "Iosevka SS17"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS17.ttc"

  # No zap stanza required
end
