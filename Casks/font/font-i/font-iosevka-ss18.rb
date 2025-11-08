cask "font-iosevka-ss18" do
  version "33.3.4"
  sha256 "3279dc3c782b9b587b23c6902847b0c730d62674211a0be419a403cb790356ff"

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
