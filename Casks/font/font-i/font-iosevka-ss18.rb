cask "font-iosevka-ss18" do
  version "34.1.0"
  sha256 "b0876305da64c7efd265f93d9d053c87a580cb50cda6b4da3f80b6317fb7a598"

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
