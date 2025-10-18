cask "font-iosevka-ss02" do
  version "33.3.2"
  sha256 "d30a9fc24bb3aa3652ce48d6bf160a4a0ad39a8c3cdb32ad9f21da88671d348f"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS02-#{version}.zip"
  name "Iosevka SS02"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS02.ttc"

  # No zap stanza required
end
