cask "font-iosevka-curly-slab" do
  version "34.2.1"
  sha256 "337bf729fcee32e610315d11eeeff3617920a9a1db57cdc23191147bc9f5beb3"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaCurlySlab-#{version}.zip"
  name "Iosevka Curly Slab"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaCurlySlab.ttc"

  # No zap stanza required
end
