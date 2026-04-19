cask "font-iosevka-ss09" do
  version "34.4.0"
  sha256 "4af303a6ff66af2e8716c0b858a947e99e8a897eb77ba4df44b17e1d01bd3c41"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS09-#{version}.zip"
  name "Iosevka SS09"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS09.ttc"

  # No zap stanza required
end
