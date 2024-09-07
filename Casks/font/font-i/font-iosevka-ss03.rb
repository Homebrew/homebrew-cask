cask "font-iosevka-ss03" do
  version "31.6.0"
  sha256 "5677d24124577ea4ee08aa2c63939cac7e681f2d5b4fc6a4ad0f21ef108183ff"

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
