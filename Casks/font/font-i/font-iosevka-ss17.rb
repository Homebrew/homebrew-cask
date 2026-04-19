cask "font-iosevka-ss17" do
  version "34.4.0"
  sha256 "3fcdcf84fb46acd4fe506116ace15106bbf1e5aeb254b989f8d77309767bccc2"

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
