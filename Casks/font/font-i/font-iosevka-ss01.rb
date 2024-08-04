cask "font-iosevka-ss01" do
  version "31.1.0"
  sha256 "bbddc7df6ae9bfd4e9f6b90ebddcef56f66d8ef58328ccfc189d506eed03908a"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS01-#{version}.zip"
  name "Iosevka SS01"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS01.ttc"

  # No zap stanza required
end
