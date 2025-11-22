cask "font-iosevka-ss06" do
  version "33.3.5"
  sha256 "785cb90f6ff2abe4aba377591d5e8cffc293c6a77ea22a8420ef5d4cd3a86f24"

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
