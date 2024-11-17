cask "font-iosevka-ss07" do
  version "32.1.0"
  sha256 "181aff239f518a192c9d99dc7b8a55a8119e583aca3ebd5b154d1583a0eb2143"

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
