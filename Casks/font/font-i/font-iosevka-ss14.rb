cask "font-iosevka-ss14" do
  version "31.7.0"
  sha256 "62c9d6155f36af2fd0e84a2d367fc2911a41635708951fc40953e7512131e4f7"

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
