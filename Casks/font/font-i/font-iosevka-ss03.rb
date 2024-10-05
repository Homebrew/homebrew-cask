cask "font-iosevka-ss03" do
  version "31.8.0"
  sha256 "3287001dd8a09f9192c0ab5213108829f490bd0b1a7e58573bba99a474596d72"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS03-#{version}.zip"
  name "Iosevka SS03"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS03.ttc"

  # No zap stanza required
end
