cask "font-maple-mono" do
  version "7.2"
  sha256 "d7043ded39b604df9b6b63b1a27c9ea2f9795252e8a18ad87e4ac0f390906663"

  url "https://github.com/subframe7536/Maple-font/releases/download/v#{version}/MapleMono-TTF.zip",
      verified: "github.com/subframe7536/Maple-font/"
  name "Maple Mono"
  homepage "https://font.subf.dev/en/"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+(?:-beta\d+)?)$/i)
    strategy :github_latest
  end

  font "MapleMono-Bold.ttf"
  font "MapleMono-BoldItalic.ttf"
  font "MapleMono-ExtraBold.ttf"
  font "MapleMono-ExtraBoldItalic.ttf"
  font "MapleMono-ExtraLight.ttf"
  font "MapleMono-ExtraLightItalic.ttf"
  font "MapleMono-Italic.ttf"
  font "MapleMono-Light.ttf"
  font "MapleMono-LightItalic.ttf"
  font "MapleMono-Medium.ttf"
  font "MapleMono-MediumItalic.ttf"
  font "MapleMono-Regular.ttf"
  font "MapleMono-SemiBold.ttf"
  font "MapleMono-SemiBoldItalic.ttf"
  font "MapleMono-Thin.ttf"
  font "MapleMono-ThinItalic.ttf"

  # No zap stanza required
end
