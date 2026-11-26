cask "font-iosevka-ss12" do
  version "34.9.2"
  sha256 "8d1e2797ad6965100a5f3334b57a439c2a93bacc1029e7ea75bc97a03107db5f"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS12-#{version}.zip"
  name "Iosevka SS12"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS12.ttc"

  zap :not_required
end
