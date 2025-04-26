cask "font-iosevka-curly-slab" do
  version "33.2.2"
  sha256 "330d41f47aa6173922177c3b64f1b0a42473811314ec3a1961088b7ac774b74e"

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
