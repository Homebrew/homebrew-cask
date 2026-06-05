cask "font-iosevka-ss05" do
  version "34.6.1"
  sha256 "671a47b8adeea1d0d89595f211a081d500dfb0cce2b74e670a4da89cfc722b80"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS05-#{version}.zip"
  name "Iosevka SS05"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS05.ttc"

  # No zap stanza required
end
