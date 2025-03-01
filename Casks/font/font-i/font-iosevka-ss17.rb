cask "font-iosevka-ss17" do
  version "33.0.0"
  sha256 "7c3f66984756dca5c2eb4e9d77e814e575ed1453e6d5d5f7947b4404fd1bac3c"

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
