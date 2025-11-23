cask "font-iosevka-ss18" do
  version "33.3.5"
  sha256 "d0bc8cfbf87a5776c663e9e59fa9e0570db3c0306c918f352db9b510458a898e"

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
