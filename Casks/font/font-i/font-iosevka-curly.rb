cask "font-iosevka-curly" do
  version "33.0.0"
  sha256 "774e7443f8094c29a82c887ce6a345ad9ae1e281ad9286e941d1772e9df2f3c3"

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
