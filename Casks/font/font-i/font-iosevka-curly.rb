cask "font-iosevka-curly" do
  version "34.6.1"
  sha256 "b20a208102011169776029e621c5546f6c9946631923debf0a348dfa412a5319"

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
