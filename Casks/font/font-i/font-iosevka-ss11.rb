cask "font-iosevka-ss11" do
  version "34.0.0"
  sha256 "b70bbfb60ce27392f1574522b960f4efb737ef4ebbfc3a1b4b28dac13a8ccc9a"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS11-#{version}.zip"
  name "Iosevka SS11"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS11.ttc"

  # No zap stanza required
end
