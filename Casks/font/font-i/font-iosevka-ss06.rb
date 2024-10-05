cask "font-iosevka-ss06" do
  version "31.8.0"
  sha256 "f6855e9aa2d5cf43d9deeac4f6ba199a97086fc4527a993098b58bd35fdfc0f7"

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
