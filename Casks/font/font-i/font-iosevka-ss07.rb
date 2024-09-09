cask "font-iosevka-ss07" do
  version "31.6.1"
  sha256 "3c5d988b796e8a875505440734bcc154d80865b4bb39a520a31462821419efb3"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS07-#{version}.zip"
  name "Iosevka SS07"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS07.ttc"

  # No zap stanza required
end
