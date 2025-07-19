cask "font-iosevka-ss03" do
  version "33.2.7"
  sha256 "b52ebaf70e70890e0b544f84240cc767a9f89f78cf9404b1bf036808f582347e"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS03-#{version}.zip"
  name "Iosevka SS03"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS03.ttc"

  # No zap stanza required
end
