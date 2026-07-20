cask "font-gandhi-sans" do
  version :latest
  sha256 :no_check

  url "https://www.fontsquirrel.com/fonts/download/gandhi-sans"
  name "Gandhi Sans"
  homepage "https://www.fontsquirrel.com/fonts/gandhi-sans"

  font "GandhiSans-Regular.otf"
  font "GandhiSans-Italic.otf"
  font "GandhiSans-Bold.otf"
  font "GandhiSans-BoldItalic.otf"

  # No zap stanza required
end
