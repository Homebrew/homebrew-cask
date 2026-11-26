cask "font-iosevka-ss10" do
  version "34.9.2"
  sha256 "fb032cc2fc7aac1803cb3b56bf404caaabab5130a04b8832fdbd989136ae20c4"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS10-#{version}.zip"
  name "Iosevka SS10"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS10.ttc"

  zap :not_required
end
