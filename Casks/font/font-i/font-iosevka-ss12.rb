cask "font-iosevka-ss12" do
  version "34.8.1"
  sha256 "c77743959e61d863af7274168868fdfa58eb96d1d362952ae6ab7558e680127d"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS12-#{version}.zip"
  name "Iosevka SS12"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS12.ttc"

  # No zap stanza required
end
