cask "font-iosevka-ss16" do
  version "33.1.0"
  sha256 "81997117569f67485c303aa2602d9c61b82d4874b3f9f54ef8863a41bd7824e7"

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
