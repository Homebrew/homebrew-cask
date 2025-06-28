cask "font-iosevka-ss05" do
  version "33.2.6"
  sha256 "86946d1c183adb04c095aa52b387cb58f94da34334a039c8f5e6f914d9b873f6"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS05-#{version}.zip"
  name "Iosevka SS05"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS05.ttc"

  # No zap stanza required
end
