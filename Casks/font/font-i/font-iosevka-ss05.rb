cask "font-iosevka-ss05" do
  version "34.3.0"
  sha256 "e87f51877ea5ae1412e263f16b2404383046978b5a4d45089910fe7e6291e07b"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS05-#{version}.zip"
  name "Iosevka SS05"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS05.ttc"

  # No zap stanza required
end
