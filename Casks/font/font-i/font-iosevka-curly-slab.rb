cask "font-iosevka-curly-slab" do
  version "31.1.0"
  sha256 "0cbc4cc7ade277c277f361999dd4602d33cc2f990f417b6d7719ef97c65b8dc3"

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
