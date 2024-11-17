cask "font-iosevka-ss17" do
  version "32.1.0"
  sha256 "112f12353563f162acc4d12bca9b1b2ec4712d066a3b97b05e3c8b60cae09499"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS17-#{version}.zip"
  name "Iosevka SS17"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS17.ttc"

  # No zap stanza required
end
