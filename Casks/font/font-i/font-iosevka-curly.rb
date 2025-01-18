cask "font-iosevka-curly" do
  version "32.4.0"
  sha256 "bbc8ad8c2a4eda5547908770e1580f92d0dce7351f97c6806964315ae165d49b"

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
