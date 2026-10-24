cask "font-iosevka-ss18" do
  version "34.9.1"
  sha256 "4aab14fc27a1254cffcb4a99eb438634548de781f1eac2bebcbc1a4c56d75fc7"

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
