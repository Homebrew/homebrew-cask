cask "font-iosevka-ss16" do
  version "31.8.0"
  sha256 "fe0efcb9080d6d80464804b2ac3f1b463d9788e66eab8d3468e1f366e275ab3c"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS16-#{version}.zip"
  name "Iosevka SS16"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS16.ttc"

  # No zap stanza required
end
