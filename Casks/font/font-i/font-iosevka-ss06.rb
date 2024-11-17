cask "font-iosevka-ss06" do
  version "32.1.0"
  sha256 "6465a6f1b3ec332c84b95e6b9f65a17e2f44e3e8fd8c0bef69c0f18b3698f9d0"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS06-#{version}.zip"
  name "Iosevka SS06"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS06.ttc"

  # No zap stanza required
end
