cask "font-iosevka-ss13" do
  version "31.1.0"
  sha256 "ef1c95a5210fd24e9355a093bfd4156e9bbb77d0864e1093367df4d3de53eced"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS13-#{version}.zip"
  name "Iosevka SS13"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS13.ttc"

  # No zap stanza required
end
