cask "font-iosevka-curly" do
  version "31.1.0"
  sha256 "46d2aad84a105670c21cf6ae9b0b0efadda38d44e683d72c4ead7167cf1d8de4"

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
