cask "font-iosevka-ss15" do
  version "34.9.1"
  sha256 "db5215717756a6a489c952dfb8fd0a27e09a7f4b5c8f9365bc24df7e87cc02be"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS15-#{version}.zip"
  name "Iosevka SS15"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS15.ttc"

  zap :not_required
end
