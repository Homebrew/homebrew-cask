cask "font-iosevka-ss11" do
  version "34.9.0"
  sha256 "0950f3e51073ed204fa70b70a97b0b9e3c55458bcdd1d420ac6da20fbf1b8d75"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS11-#{version}.zip"
  name "Iosevka SS11"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS11.ttc"

  # No zap stanza required
end
