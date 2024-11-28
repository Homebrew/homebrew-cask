cask "font-iosevka-ss13" do
  version "32.2.0"
  sha256 "cc874585420530e49a2e43e20e6453a4f975a4e3e4f99154128589df1c416993"

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
