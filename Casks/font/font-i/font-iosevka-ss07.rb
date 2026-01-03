cask "font-iosevka-ss07" do
  version "34.0.0"
  sha256 "c2e59194544a46ecd9aa1642ff1e6bfc5d8e1cfe1ccbd0231b4fe6a80a68d98a"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS07-#{version}.zip"
  name "Iosevka SS07"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS07.ttc"

  # No zap stanza required
end
