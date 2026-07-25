cask "font-iosevka-curly" do
  version "34.7.0"
  sha256 "d1736e247d4db21e6c988c034e61fb15ba62be32696a42a11a73d774d970b709"

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
