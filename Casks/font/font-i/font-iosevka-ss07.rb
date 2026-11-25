cask "font-iosevka-ss07" do
  version "34.9.1"
  sha256 "a80aba5eb25c0d7e2c5a9155e8be64b476c915897ae711cbb36453e631182c3a"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS07-#{version}.zip"
  name "Iosevka SS07"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS07.ttc"

  zap :not_required
end
