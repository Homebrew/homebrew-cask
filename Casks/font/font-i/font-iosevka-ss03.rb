cask "font-iosevka-ss03" do
  version "32.2.1"
  sha256 "9f17c91d7d7bbc9c80c81022f7566e6a983988658a92c402a4569f4dcf7d1236"

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
