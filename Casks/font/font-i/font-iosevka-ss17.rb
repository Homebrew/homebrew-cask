cask "font-iosevka-ss17" do
  version "33.2.3"
  sha256 "fa9422ce00b7b9f60c9240bfb8e7aa36752c9bb259b797f6c8930e4a2d6ff58c"

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
