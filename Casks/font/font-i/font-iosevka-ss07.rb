cask "font-iosevka-ss07" do
  version "34.6.0"
  sha256 "9f8da949c77aa3b947a11bc1ccda02b8c1f5b43359646dd13d7b40de9f2b1faf"

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
