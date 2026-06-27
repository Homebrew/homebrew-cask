cask "font-iosevka-ss17" do
  version "34.7.0"
  sha256 "d72bb739abe40cdd5e3dd4d521124502bf0b0b460dc745203a1f1e7cd6f754fd"

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
