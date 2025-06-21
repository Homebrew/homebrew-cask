cask "font-iosevka-ss11" do
  version "33.2.5"
  sha256 "5c969ff6a4a6a43a3c9a0da6623818c0272d9dbf2f6f0f650b64a4e30222d61b"

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
