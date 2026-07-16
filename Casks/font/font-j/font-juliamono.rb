cask "font-juliamono" do
  version "0.63.0"
  sha256 "81838b51ce39dbe6355c21a51bf958632979734d3a69dba3a044b1c3757d5315"

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
