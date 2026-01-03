cask "font-iosevka-ss13" do
  version "34.0.0"
  sha256 "26df2d3ef214cbbe0e693cf6bdcbf19deeb1f58ec668b7ec61652863d771a7ff"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS13-#{version}.zip"
  name "Iosevka SS13"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS13.ttc"

  # No zap stanza required
end
