cask "font-iosevka-ss01" do
  version "32.2.0"
  sha256 "5932988c975bccdf55be836a9b0672e15601f5f920c57d19c7b9a149e0cbc708"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS01-#{version}.zip"
  name "Iosevka SS01"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS01.ttc"

  # No zap stanza required
end
