cask "font-iosevka-ss13" do
  version "32.5.0"
  sha256 "9050e690b24d47e1f193b03c7f3f6c9c1ebddf9d966bf39ac6711f4fb4cce03d"

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
