cask "font-juliamono" do
  version "0.061"
  sha256 "b5136a8f05637c183a2376d9acec4b32a10f3abcff2aafa8540c6e7c2923a023"

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
