cask "font-iosevka-ss01" do
  version "31.9.0"
  sha256 "2eba215ffd61662c8ef106baedb8f37ef63cd9b445735259b37a581dd9da3ea4"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS01-#{version}.zip"
  name "Iosevka SS01"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS01.ttc"

  # No zap stanza required
end
