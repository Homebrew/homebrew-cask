cask "font-iosevka-ss17" do
  version "32.3.0"
  sha256 "97304fa5da81719af7b9206c81da3b29e0afa74ba3e96a634e895bcae86c226c"

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
