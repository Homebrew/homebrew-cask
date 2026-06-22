cask "font-iosevka-ss08" do
  version "34.6.3"
  sha256 "e70e08d543694d39ae5a3dc0f3c8e1b670e8ac7a68fa47f3cdf7f6285812db62"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS08-#{version}.zip"
  name "Iosevka SS08"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS08.ttc"

  # No zap stanza required
end
