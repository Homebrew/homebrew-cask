cask "font-iosevka-ss07" do
  version "31.9.0"
  sha256 "e4e6a36ec076075d828fd01f499f160ebd1f2d2b2b87a774f74dbbb837ceb9ea"

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
