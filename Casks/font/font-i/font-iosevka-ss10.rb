cask "font-iosevka-ss10" do
  version "34.9.1"
  sha256 "cb5db4ccf7e6976c843a5553527a5b544a66a9f610bc6abd513421ff5748ac2d"

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
