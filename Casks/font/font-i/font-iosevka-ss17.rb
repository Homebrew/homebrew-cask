cask "font-iosevka-ss17" do
  version "31.7.0"
  sha256 "d45ad7749c6ea4cd5db1bd777958dd9d6664078684233cf237705b237866c2ae"

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
