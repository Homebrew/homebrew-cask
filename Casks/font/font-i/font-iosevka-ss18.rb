cask "font-iosevka-ss18" do
  version "33.2.2"
  sha256 "84935a2d37acaa11f18a0160def0d2d4b2e598ff81d910aeec82c9ce42c59d42"

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
