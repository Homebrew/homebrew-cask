cask "font-inria" do
  version :latest
  sha256 :no_check

  url "https://github.com/BlackFoundry/InriaFonts/archive/master.zip",
      verified: "github.com/BlackFoundry/InriaFonts/"
  name "Inria"
  homepage "https://black-foundry.com/blog/inria-serif-and-inria/"

  font "InriaFonts-master/fonts/InriaSans/OTF/InriaSans-Bold.otf"
  font "InriaFonts-master/fonts/InriaSans/OTF/InriaSans-BoldItalic.otf"
  font "InriaFonts-master/fonts/InriaSans/OTF/InriaSans-Italic.otf"
  font "InriaFonts-master/fonts/InriaSans/OTF/InriaSans-Light.otf"
  font "InriaFonts-master/fonts/InriaSans/OTF/InriaSans-LightItalic.otf"
  font "InriaFonts-master/fonts/InriaSans/OTF/InriaSans-Regular.otf"
  font "InriaFonts-master/fonts/InriaSerif/OTF/InriaSerif-Bold.otf"
  font "InriaFonts-master/fonts/InriaSerif/OTF/InriaSerif-BoldItalic.otf"
  font "InriaFonts-master/fonts/InriaSerif/OTF/InriaSerif-Italic.otf"
  font "InriaFonts-master/fonts/InriaSerif/OTF/InriaSerif-Light.otf"
  font "InriaFonts-master/fonts/InriaSerif/OTF/InriaSerif-LightItalic.otf"
  font "InriaFonts-master/fonts/InriaSerif/OTF/InriaSerif-Regular.otf"

  # No zap stanza required
end
