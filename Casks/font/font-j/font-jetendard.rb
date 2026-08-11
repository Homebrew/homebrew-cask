cask "font-jetendard" do
  version "0.1.0"
  sha256 "399ab416895c01ddc1d43db509d7aa7cede4ad209f597ae8639c6d0194c2b133"

  url "https://github.com/kuskhan/jetendard/releases/download/v#{version}/Jetendard-TTF.zip"
  name "Jetendard"
  homepage "https://github.com/kuskhan/jetendard"

  font "ttf/Jetendard-Bold.ttf"
  font "ttf/Jetendard-BoldItalic.ttf"
  font "ttf/Jetendard-ExtraBold.ttf"
  font "ttf/Jetendard-ExtraBoldItalic.ttf"
  font "ttf/Jetendard-ExtraLight.ttf"
  font "ttf/Jetendard-ExtraLightItalic.ttf"
  font "ttf/Jetendard-Italic.ttf"
  font "ttf/Jetendard-Light.ttf"
  font "ttf/Jetendard-LightItalic.ttf"
  font "ttf/Jetendard-Medium.ttf"
  font "ttf/Jetendard-MediumItalic.ttf"
  font "ttf/Jetendard-Regular.ttf"
  font "ttf/Jetendard-SemiBold.ttf"
  font "ttf/Jetendard-SemiBoldItalic.ttf"
  font "ttf/Jetendard-Thin.ttf"
  font "ttf/Jetendard-ThinItalic.ttf"

  # No zap stanza required
end
