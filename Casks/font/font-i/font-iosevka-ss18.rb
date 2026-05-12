cask "font-iosevka-ss18" do
  version "34.5.0"
  sha256 "dddd78cd25927ee200c2462128d93ed9de35ae0aa82df5ffc14b13fcab353069"

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
