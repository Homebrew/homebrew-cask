cask "font-iosevka-ss10" do
  version "32.4.0"
  sha256 "73794e188fe8a5f2291a7b776c8909411bf2f4d49fd2a88e146f1dc47981a02a"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS10-#{version}.zip"
  name "Iosevka SS10"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS10.ttc"

  # No zap stanza required
end
