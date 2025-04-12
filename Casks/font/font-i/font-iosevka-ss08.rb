cask "font-iosevka-ss08" do
  version "33.2.1"
  sha256 "0e25dc4dcf14db5278b919afa5aca87bff655b765c934404b241c7c33322b1b9"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS08-#{version}.zip"
  name "Iosevka SS08"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS08.ttc"

  # No zap stanza required
end
