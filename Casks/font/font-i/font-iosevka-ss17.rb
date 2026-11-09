cask "font-iosevka-ss17" do
  version "34.9.1"
  sha256 "9bc8f2dd39728ef9d1b12dafe5941f3725cfd263a6083cb54c461af7943c5eb2"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS17-#{version}.zip"
  name "Iosevka SS17"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS17.ttc"

  zap :not_required
end
