cask "font-iosevka-ss16" do
  version "34.9.2"
  sha256 "bee1fa98ae6fc9b4bb99bc2beb2c54e6913950843fe2e9184a2e4747dc42776f"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS16-#{version}.zip"
  name "Iosevka SS16"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS16.ttc"

  zap :not_required
end
