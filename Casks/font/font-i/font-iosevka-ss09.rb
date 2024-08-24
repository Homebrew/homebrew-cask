cask "font-iosevka-ss09" do
  version "31.4.0"
  sha256 "3416ea53ade3189be3642863e0c274c6586300a568a3a1475f37b9e9f56cc1f7"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS09-#{version}.zip"
  name "Iosevka SS09"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS09.ttc"

  # No zap stanza required
end
