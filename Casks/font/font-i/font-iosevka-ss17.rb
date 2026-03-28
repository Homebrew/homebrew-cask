cask "font-iosevka-ss17" do
  version "34.3.0"
  sha256 "52d1c957f834290180c69125653aa9079776d63208375b268bb6d1201d77af99"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS17-#{version}.zip"
  name "Iosevka SS17"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS17.ttc"

  # No zap stanza required
end
