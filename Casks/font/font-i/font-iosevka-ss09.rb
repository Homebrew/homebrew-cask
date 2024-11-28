cask "font-iosevka-ss09" do
  version "32.2.0"
  sha256 "a87256eda1af8d6c3a33b545106a07777efbcf9529dee92938725c7bec16fc6b"

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
