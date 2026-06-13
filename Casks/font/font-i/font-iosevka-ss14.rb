cask "font-iosevka-ss14" do
  version "34.6.2"
  sha256 "23dab05aec9bdf4b9c5709cf553579cfc8d5031d70002cede82851cd194d7e82"

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
