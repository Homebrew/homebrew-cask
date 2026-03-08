cask "font-iosevka-ss18" do
  version "34.2.1"
  sha256 "65c9b0effdd22a0c49fa39f2fb2a9e1231dfa5e04e5b540bfcc7863d8662cc4a"

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
