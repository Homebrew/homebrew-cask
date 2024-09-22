cask "font-iosevka-ss07" do
  version "31.7.1"
  sha256 "54a36386289d9cd9b8ce40ee6555c6d96054f07d0f5cbb9cc3363e1df4c90e3d"

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
