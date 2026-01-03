cask "font-iosevka-ss05" do
  version "34.0.0"
  sha256 "cda36237b6e4420f6fcde6fa064313e20dcfc1f80262fddbf1fe243dcc1779c8"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS05-#{version}.zip"
  name "Iosevka SS05"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS05.ttc"

  # No zap stanza required
end
