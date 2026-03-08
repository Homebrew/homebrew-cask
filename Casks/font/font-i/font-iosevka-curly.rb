cask "font-iosevka-curly" do
  version "34.2.1"
  sha256 "d1faf0d16fcc45ad8751e10dd96798b2fa0401f82ae6c5e7aa756724a173030b"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaCurly-#{version}.zip"
  name "Iosevka Curly"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaCurly.ttc"

  # No zap stanza required
end
