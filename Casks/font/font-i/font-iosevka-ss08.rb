cask "font-iosevka-ss08" do
  version "31.6.1"
  sha256 "fa35fae5c32aba851cb876158160233414fadf18b84cb2f294780366b99fc07e"

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
