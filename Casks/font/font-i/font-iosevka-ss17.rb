cask "font-iosevka-ss17" do
  version "32.2.0"
  sha256 "e0f52b760984880fa20f8ed00f6482af8dc682a6af6f899521ab3f2f2bcea1b5"

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
