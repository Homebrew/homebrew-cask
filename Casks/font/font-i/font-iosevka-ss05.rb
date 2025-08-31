cask "font-iosevka-ss05" do
  version "33.2.9"
  sha256 "4c440bf3d07a24592686d63ac552ba984e7ce429d12018f7319e1517ab0c3fcb"

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
