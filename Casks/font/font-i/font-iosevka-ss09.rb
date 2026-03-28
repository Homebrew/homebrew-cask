cask "font-iosevka-ss09" do
  version "34.3.0"
  sha256 "623e6417c9c4111d7fd23bdba03778351bf0ed970fdc7949caebe5c73a9196db"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS09-#{version}.zip"
  name "Iosevka SS09"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS09.ttc"

  # No zap stanza required
end
