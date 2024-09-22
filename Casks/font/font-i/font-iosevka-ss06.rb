cask "font-iosevka-ss06" do
  version "31.7.1"
  sha256 "715c5ca224c7fe5c8208d2a4136ff92e1fc56e6990ec57ad9d974ff7bb7b71f4"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS06-#{version}.zip"
  name "Iosevka SS06"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS06.ttc"

  # No zap stanza required
end
