cask "font-iosevka-ss18" do
  version "33.3.3"
  sha256 "7a194ee9a248379f1af76026ef5c69904de0436b41ee200da56bb31c652d05e4"

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
