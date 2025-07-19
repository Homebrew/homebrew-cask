cask "font-iosevka-curly" do
  version "33.2.7"
  sha256 "18e68b7f59677d924379c5746373c7e90ab24b77cbf0ead12b1eb2dd9f605c3e"

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
