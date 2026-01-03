cask "font-iosevka-ss09" do
  version "34.0.0"
  sha256 "d63d5b33f062cd913ec32991b84e3f668098b93a01182d211fc5506296aa4fe2"

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
