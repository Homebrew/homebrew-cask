cask "font-iosevka-ss01" do
  version "33.2.6"
  sha256 "5e21a1280a6f4d16dbfa7c7b56cb59840ab5f21f696ad21f41852ffeff16280a"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS01-#{version}.zip"
  name "Iosevka SS01"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS01.ttc"

  # No zap stanza required
end
