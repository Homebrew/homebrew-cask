cask "font-maple-mono" do
  version "7.3"
  sha256 "055aec4dbcbfbd588adb6b0048e43af97ab46be62f9aaec4b12aa169e6248ca1"

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
