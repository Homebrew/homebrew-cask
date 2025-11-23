cask "font-sometype-mono" do
  version :latest
  sha256 :no_check

  url "https://github.com/dharmatype/Sometype-Mono/archive/refs/heads/master.tar.gz",
      verified: "github.com/dharmatype/Sometype-Mono/"
  name "Sometype Mono"
  homepage "https://monospacedfont.com/"

  font "Sometype-Mono-master/fonts/otf/SometypeMono-Bold.otf"
  font "Sometype-Mono-master/fonts/otf/SometypeMono-BoldItalic.otf"
  font "Sometype-Mono-master/fonts/otf/SometypeMono-Medium.otf"
  font "Sometype-Mono-master/fonts/otf/SometypeMono-MediumItalic.otf"
  font "Sometype-Mono-master/fonts/otf/SometypeMono-Regular.otf"
  font "Sometype-Mono-master/fonts/otf/SometypeMono-RegularItalic.otf"

  # No zap stanza required
end
