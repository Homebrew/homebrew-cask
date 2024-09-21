cask "font-iosevka-ss03" do
  version "31.7.0"
  sha256 "f9c93be8694f766b389d9f72704af97eae1a3b83751790b9effcc6a3ba6dcb39"

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
