cask "font-iosevka-ss03" do
  version "33.3.1"
  sha256 "c40e92e7ad92b57245960bf111be6362666a48bdeea83ac45caefdb42922b6da"

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
