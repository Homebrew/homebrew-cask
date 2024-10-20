cask "font-juliamono" do
  version "0.058"
  sha256 "513b9851d980cf4abc58ffee7c32819b0c7c995e9d8557fddc1d37016432726b"

  url "https://github.com/cormullion/juliamono/releases/download/v#{version}/JuliaMono-ttf.tar.gz"
  name "JuliaMono"
  homepage "https://github.com/cormullion/juliamono"

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
