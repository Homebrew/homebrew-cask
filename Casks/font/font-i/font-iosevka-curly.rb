cask "font-iosevka-curly" do
  version "33.3.1"
  sha256 "54de30f36b4d00982e78f965076be6d4dc902e66212a63ec818b6ebf6b10ee27"

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
