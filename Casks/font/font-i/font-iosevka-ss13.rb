cask "font-iosevka-ss13" do
  version "31.8.0"
  sha256 "73f3eed86743876555cb74333346c869a62e86092839c3c60469135632408a8e"

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
