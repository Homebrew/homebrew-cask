cask "font-iosevka-ss14" do
  version "31.2.0"
  sha256 "c5be9a7ffd6127102a5882eacb4e64c63b590f75e6188ea0c5c0f6a6dee619c0"

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
