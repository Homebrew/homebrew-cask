cask "font-iosevka-ss17" do
  version "33.2.4"
  sha256 "c348f3b15e7fe4d7e162acd4c573ea1552cb263f7ba7dda58e7558ed8a6922a8"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS17-#{version}.zip"
  name "Iosevka SS17"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS17.ttc"

  # No zap stanza required
end
