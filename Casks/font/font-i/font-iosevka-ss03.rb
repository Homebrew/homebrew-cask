cask "font-iosevka-ss03" do
  version "31.3.0"
  sha256 "bb05bcca2e829b785b9712bc6b765903bc9e5755cc24f6d6558098eea468f978"

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
