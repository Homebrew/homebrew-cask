cask "font-iosevka-ss16" do
  version "33.2.3"
  sha256 "377ee5aab95d68bb0949ff0fc30d0803928ef986586cd5f2c7c7e0fddecf8664"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS16-#{version}.zip"
  name "Iosevka SS16"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS16.ttc"

  # No zap stanza required
end
