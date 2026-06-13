cask "font-iosevka-ss17" do
  version "34.6.2"
  sha256 "bb0dcdc52ee2974e024dd3204cb06e75ed5438e48174a87bfcd4cca640559436"

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
