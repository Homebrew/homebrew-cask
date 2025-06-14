cask "font-iosevka-ss14" do
  version "33.2.5"
  sha256 "acc877eaa7595406e050420dfd93f26dbb6070ae85bdbc1a3ef3472446186e75"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS14-#{version}.zip"
  name "Iosevka SS14"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS14.ttc"

  # No zap stanza required
end
