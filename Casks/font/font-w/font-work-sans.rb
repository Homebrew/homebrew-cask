cask "font-work-sans" do
  version :latest
  sha256 :no_check

  url "https://github.com/weiweihuanghuang/Work-Sans/archive/master.zip",
      verified: "github.com/weiweihuanghuang/Work-Sans/"
  name "Work Sans"
  homepage "https://weiweihuanghuang.github.io/Work-Sans/"

  font "Work-Sans-master/fonts/ttf/WorkSans-Black.ttf"
  font "Work-Sans-master/fonts/ttf/WorkSans-BlackItalic.ttf"
  font "Work-Sans-master/fonts/ttf/WorkSans-Bold.ttf"
  font "Work-Sans-master/fonts/ttf/WorkSans-BoldItalic.ttf"
  font "Work-Sans-master/fonts/ttf/WorkSans-ExtraBold.ttf"
  font "Work-Sans-master/fonts/ttf/WorkSans-ExtraBoldItalic.ttf"
  font "Work-Sans-master/fonts/ttf/WorkSans-ExtraLight.ttf"
  font "Work-Sans-master/fonts/ttf/WorkSans-ExtraLightItalic.ttf"
  font "Work-Sans-master/fonts/ttf/WorkSans-Italic.ttf"
  font "Work-Sans-master/fonts/ttf/WorkSans-Light.ttf"
  font "Work-Sans-master/fonts/ttf/WorkSans-LightItalic.ttf"
  font "Work-Sans-master/fonts/ttf/WorkSans-Medium.ttf"
  font "Work-Sans-master/fonts/ttf/WorkSans-MediumItalic.ttf"
  font "Work-Sans-master/fonts/ttf/WorkSans-Regular.ttf"
  font "Work-Sans-master/fonts/ttf/WorkSans-SemiBold.ttf"
  font "Work-Sans-master/fonts/ttf/WorkSans-SemiBoldItalic.ttf"
  font "Work-Sans-master/fonts/ttf/WorkSans-Thin.ttf"
  font "Work-Sans-master/fonts/ttf/WorkSans-ThinItalic.ttf"

  # No zap stanza required
end
