cask "font-iosevka-ss03" do
  version "33.2.2"
  sha256 "229b1ac12c523875e5c274c6bbc0d2926acd948dfb086d8a744ff07d7a93b5d3"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS03-#{version}.zip"
  name "Iosevka SS03"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS03.ttc"

  # No zap stanza required
end
