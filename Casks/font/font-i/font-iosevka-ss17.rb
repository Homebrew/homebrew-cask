cask "font-iosevka-ss17" do
  version "34.6.3"
  sha256 "2a144bc83bec2038c0a58388fd2b3e76d9c37ef62869751b9d4b5e636c022170"

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
