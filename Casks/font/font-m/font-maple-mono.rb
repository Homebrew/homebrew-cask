cask "font-maple-mono" do
  version "7.4"
  sha256 "820009abd4a0f22d655e913a69d36a8555c91f903537b75eaec90dfd94e7f8a1"

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
