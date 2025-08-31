cask "font-iosevka-ss18" do
  version "33.2.9"
  sha256 "37cf4487b4dd30b564f99c0692a1d8e5af189fcda0728cc58d4d8af7386f4657"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS18-#{version}.zip"
  name "Iosevka SS18"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS18.ttc"

  # No zap stanza required
end
