cask "font-iosevka-curly" do
  version "33.3.6"
  sha256 "f4e88e9b85d63a39ff61a96fdfb4703523cffeecf9e4bd62856dbc7449cd3321"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaCurly-#{version}.zip"
  name "Iosevka Curly"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaCurly.ttc"

  # No zap stanza required
end
