cask "font-iosevka-ss09" do
  version "33.3.2"
  sha256 "4fbedbb3073120d9fd8ff7aa81f13b9955d7090cd8d2891df27f6a41e1d936fa"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS09-#{version}.zip"
  name "Iosevka SS09"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS09.ttc"

  # No zap stanza required
end
