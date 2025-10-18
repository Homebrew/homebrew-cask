cask "font-iosevka-ss05" do
  version "33.3.2"
  sha256 "b08c0fdb4efe2c10787aa61001f063fa9a204bf29b057e449b31c98c95ae2e5c"

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
