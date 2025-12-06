cask "font-iosevka-ss12" do
  version "33.3.6"
  sha256 "def49b4095dd80772d6605359f294a8b041f5021d47a6d4018d37092900e3963"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS12-#{version}.zip"
  name "Iosevka SS12"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS12.ttc"

  # No zap stanza required
end
