cask "font-iosevka-ss18" do
  version "34.6.1"
  sha256 "b2f6b3572e1ab2a74ed727918f3b062b41de2166fa776b6a36cb8ef8b5c03c97"

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
