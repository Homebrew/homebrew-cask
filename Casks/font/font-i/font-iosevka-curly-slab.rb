cask "font-iosevka-curly-slab" do
  version "33.3.2"
  sha256 "773ffe9540f6f1369e42eff7f3ca04ca8fc4b0baf21a0e996b692246d80990a5"

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
