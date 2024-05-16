cask "font-work-sans" do
  version :latest
  sha256 :no_check

  url "https://github.com/weiweihuanghuang/Work-Sans.git",
      verified:  "github.com/weiweihuanghuang/Work-Sans",
      branch:    "master",
      only_path: "fonts"
  name "Work Sans"
  homepage "https://weiweihuanghuang.github.io/Work-Sans/"

  font "otf/WorkSans-Black.otf"
  font "otf/WorkSans-BlackItalic.otf"
  font "otf/WorkSans-Bold.otf"
  font "otf/WorkSans-BoldItalic.otf"
  font "otf/WorkSans-ExtraBold.otf"
  font "otf/WorkSans-ExtraBoldItalic.otf"
  font "otf/WorkSans-ExtraLight.otf"
  font "otf/WorkSans-ExtraLightItalic.otf"
  font "otf/WorkSans-Italic.otf"
  font "otf/WorkSans-Light.otf"
  font "otf/WorkSans-LightItalic.otf"
  font "otf/WorkSans-Medium.otf"
  font "otf/WorkSans-MediumItalic.otf"
  font "otf/WorkSans-Regular.otf"
  font "otf/WorkSans-SemiBold.otf"
  font "otf/WorkSans-SemiBoldItalic.otf"
  font "otf/WorkSans-Thin.otf"
  font "otf/WorkSans-ThinItalic.otf"
  font "variable/WorkSans-Italic[wght].ttf"
  font "variable/WorkSans[wght].ttf"

  # No zap stanza required
end
