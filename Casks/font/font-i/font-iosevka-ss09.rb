cask "font-iosevka-ss09" do
  version "33.2.5"
  sha256 "146891d119e8b7e452d6855283f8ff693eef1e7a57840a65f40937cfc5e76077"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS09-#{version}.zip"
  name "Iosevka SS09"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS09.ttc"

  # No zap stanza required
end
