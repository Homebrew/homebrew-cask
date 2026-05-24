cask "font-iosevka-ss09" do
  version "34.6.1"
  sha256 "408dd65d9889f0647f29a93c50cd772fef894f0877b5443e970aaae4cf986549"

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
