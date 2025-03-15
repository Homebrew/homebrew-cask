cask "font-iosevka-ss08" do
  version "33.1.0"
  sha256 "1a57c35cc28e33ea124db6b1ba998cad48c43271c8c235042fd1207d9dfdf450"

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
