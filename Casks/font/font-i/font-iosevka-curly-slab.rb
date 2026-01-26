cask "font-iosevka-curly-slab" do
  version "34.1.0"
  sha256 "5d259fa989af4d96d369ac6cedb7a74da908dc7e8d23b5d7aa69bf60159224ba"

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
