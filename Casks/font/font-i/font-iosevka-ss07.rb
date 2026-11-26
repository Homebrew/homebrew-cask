cask "font-iosevka-ss07" do
  version "34.9.2"
  sha256 "f89d8bca3b2679e3bebfc53a0ebb0658d5da3ff736a651cbf431a0ec9405ecaa"

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
