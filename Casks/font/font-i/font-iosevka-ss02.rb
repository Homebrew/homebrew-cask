cask "font-iosevka-ss02" do
  version "34.2.1"
  sha256 "656c52a1f0aaf3e4fa6311d2dd637f26585b511e885b1f652ca6d8b76f8fc446"

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
