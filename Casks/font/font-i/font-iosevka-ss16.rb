cask "font-iosevka-ss16" do
  version "33.3.6"
  sha256 "d861052de4bafa02ff7a9d69f7216e5c16dc7978658659c698d061a5206ff036"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS16-#{version}.zip"
  name "Iosevka SS16"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS16.ttc"

  # No zap stanza required
end
