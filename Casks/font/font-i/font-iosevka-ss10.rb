cask "font-iosevka-ss10" do
  version "31.1.0"
  sha256 "f685b52a50aefb599d73fb6b3f8d372d2a486e573d19f25695c921ca617d2f9b"

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
