cask "font-iosevka-ss18" do
  version "31.5.0"
  sha256 "4de6d583f344ca5b54bb2f1a25c372230d5bee4a434c65f1d50ae6e85deff8e1"

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
