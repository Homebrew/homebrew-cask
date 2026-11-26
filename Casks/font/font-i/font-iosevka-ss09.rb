cask "font-iosevka-ss09" do
  version "34.9.2"
  sha256 "e78b74e15580f37faec6a70a74ae8d018df671535800f903fe6f990bc222e6b4"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS09-#{version}.zip"
  name "Iosevka SS09"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS09.ttc"

  zap :not_required
end
