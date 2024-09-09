cask "font-iosevka-ss10" do
  version "31.6.1"
  sha256 "ae2d8da469f72e3792d867068386fe11c9dc6662fcb3cfe45c9b5cf0f041715c"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS10-#{version}.zip"
  name "Iosevka SS10"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS10.ttc"

  # No zap stanza required
end
