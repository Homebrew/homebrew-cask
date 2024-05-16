cask "font-work-sans" do
  version :latest
  sha256 :no_check

  url "https://github.com/weiweihuanghuang/Work-Sans.git",
      verified:  "github.com/weiweihuanghuang/Work-Sans",
      branch:    "master",
      only_path: "fonts"
  name "Work Sans"
  homepage "https://weiweihuanghuang.github.io/Work-Sans/"

  font "ttf/WorkSans-Black.ttf"
  font "ttf/WorkSans-BlackItalic.ttf"
  font "ttf/WorkSans-Bold.ttf"
  font "ttf/WorkSans-BoldItalic.ttf"
  font "ttf/WorkSans-ExtraBold.ttf"
  font "ttf/WorkSans-ExtraBoldItalic.ttf"
  font "ttf/WorkSans-ExtraLight.ttf"
  font "ttf/WorkSans-ExtraLightItalic.ttf"
  font "ttf/WorkSans-Italic.ttf"
  font "ttf/WorkSans-Light.ttf"
  font "ttf/WorkSans-LightItalic.ttf"
  font "ttf/WorkSans-Medium.ttf"
  font "ttf/WorkSans-MediumItalic.ttf"
  font "ttf/WorkSans-Regular.ttf"
  font "ttf/WorkSans-SemiBold.ttf"
  font "ttf/WorkSans-SemiBoldItalic.ttf"
  font "ttf/WorkSans-Thin.ttf"
  font "ttf/WorkSans-ThinItalic.ttf"
  font "variable/WorkSans-Italic[wght].ttf"
  font "variable/WorkSans[wght].ttf"

  # No zap stanza required
end
