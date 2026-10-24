cask "font-iosevka-ss16" do
  version "34.9.1"
  sha256 "c9807606b8214b3972942230f46d075e6aeb81c32a667764e4f6f7fbad2246a7"

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
