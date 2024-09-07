cask "font-iosevka-ss18" do
  version "31.6.0"
  sha256 "a50a4bd8f1a6912334f1cc8faca9950d27a8871cc061ec3323e7297aef31e397"

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
