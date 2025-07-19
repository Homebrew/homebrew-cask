cask "font-iosevka-ss10" do
  version "33.2.7"
  sha256 "8f7ee9014b71717d410ae7ec20a3530c1f38d7ec4232aa09e5c6306ee77eab24"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS10-#{version}.zip"
  name "Iosevka SS10"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS10.ttc"

  # No zap stanza required
end
