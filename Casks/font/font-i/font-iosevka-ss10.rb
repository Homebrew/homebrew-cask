cask "font-iosevka-ss10" do
  version "34.8.1"
  sha256 "d2a130c26e67455a73c23c16df18634cf60d9924f812574c78e343f699e92608"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS10-#{version}.zip"
  name "Iosevka SS10"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS10.ttc"

  # No zap stanza required
end
