cask "font-iosevka-ss16" do
  version "34.6.3"
  sha256 "9ddb7cfeafcc325d6e94c5eeec61d4682713429e336fca3e8e6b1cccf705a55a"

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
