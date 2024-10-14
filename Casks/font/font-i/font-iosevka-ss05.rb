cask "font-iosevka-ss05" do
  version "31.9.1"
  sha256 "bbc38c978b49b4720a63c6362642179173455398f2d62d754abd9e54af61764e"

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
