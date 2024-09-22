cask "font-iosevka-ss03" do
  version "31.7.1"
  sha256 "b2d298b6664a0a24402dfa2fde2e7939cd41554078fb59da69cf66454f4df328"

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
