cask "font-iosevka-curly" do
  version "31.6.1"
  sha256 "0815f9e43a99a2afc1305273ad4768ea2a6737f46402ddc1718ab30d8f5de506"

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
