cask "font-iosevka-ss07" do
  version "33.3.6"
  sha256 "711d0ec94bea61efbdac656674d73de0fdabbc8053aa102a58607a48f7a3b04c"

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
