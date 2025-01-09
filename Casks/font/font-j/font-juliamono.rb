cask "font-juliamono" do
  version "0.059"
  sha256 "e072777a94437519d9bda7eb5cf21b570a090802266d09827ab8b6bc84d13097"

  url "https://github.com/cormullion/juliamono/releases/download/v#{version}/JuliaMono-ttf.tar.gz",
      verified: "github.com/cormullion/juliamono/"
  name "JuliaMono"
  homepage "https://juliamono.netlify.app/"

  font "JuliaMono-Black.ttf"
  font "JuliaMono-BlackItalic.ttf"
  font "JuliaMono-Bold.ttf"
  font "JuliaMono-BoldItalic.ttf"
  font "JuliaMono-ExtraBold.ttf"
  font "JuliaMono-ExtraBoldItalic.ttf"
  font "JuliaMono-Light.ttf"
  font "JuliaMono-LightItalic.ttf"
  font "JuliaMono-Medium.ttf"
  font "JuliaMono-MediumItalic.ttf"
  font "JuliaMono-Regular.ttf"
  font "JuliaMono-RegularItalic.ttf"
  font "JuliaMono-SemiBold.ttf"
  font "JuliaMono-SemiBoldItalic.ttf"

  # No zap stanza required
end
