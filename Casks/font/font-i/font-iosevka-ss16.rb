cask "font-iosevka-ss16" do
  version "33.3.0"
  sha256 "d96cb0fa66d8679293263cdc6e84676e7ee8ba536e4d3e26a830e005bafe756b"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS16-#{version}.zip"
  name "Iosevka SS16"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS16.ttc"

  # No zap stanza required
end
