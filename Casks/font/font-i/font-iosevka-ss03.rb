cask "font-iosevka-ss03" do
  version "31.1.0"
  sha256 "deeabe220280dc80a9e191c777c9eefae3f2da23b50362710feaeb7faaa7171e"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS03-#{version}.zip"
  name "Iosevka SS03"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS03.ttc"

  # No zap stanza required
end
