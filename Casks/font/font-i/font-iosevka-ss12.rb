cask "font-iosevka-ss12" do
  version "31.8.0"
  sha256 "0928730699188f26db621e96e204868fabaf5f8eca60775348f220c00d0058e7"

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
