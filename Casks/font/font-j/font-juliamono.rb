cask "font-juliamono" do
  version "0.062"
  sha256 "d686ba37d804a9075240abd555101a5f602e36dee4be17c945c70995116da8ec"

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
