cask "font-iosevka-ss14" do
  version "33.2.1"
  sha256 "2c2a770a58feb02ee944e056cf358c379cc9675bb26a2e48faf8074258587492"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS14-#{version}.zip"
  name "Iosevka SS14"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS14.ttc"

  # No zap stanza required
end
