cask "font-iosevka-ss12" do
  version "34.7.0"
  sha256 "2c9cfdbade7d2fee86c6c918ceb5a98408f88032c4ee1483ee80fe9bfef6d56f"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS12-#{version}.zip"
  name "Iosevka SS12"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS12.ttc"

  # No zap stanza required
end
