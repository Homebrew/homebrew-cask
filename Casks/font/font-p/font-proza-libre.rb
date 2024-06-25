cask "font-proza-libre" do
  version "1.0"
  sha256 "c6d975321ef7853769a68fbb290c3f0b0b72ca175a2bbd2a33b1bdf2e1db5490"

  url "https://github.com/jasperdewaard/Proza-Libre/archive/refs/tags/#{version}.tar.gz"
  name "Proza Libre"
  homepage "https://github.com/jasperdewaard/Proza-Libre"

  font "Proza-Libre-#{version}/Fonts/ProzaLibre-Bold.ttf"
  font "Proza-Libre-#{version}/Fonts/ProzaLibre-BoldItalic.ttf"
  font "Proza-Libre-#{version}/Fonts/ProzaLibre-ExtraBold.ttf"
  font "Proza-Libre-#{version}/Fonts/ProzaLibre-ExtraBoldItalic.ttf"
  font "Proza-Libre-#{version}/Fonts/ProzaLibre-Italic.ttf"
  font "Proza-Libre-#{version}/Fonts/ProzaLibre-Medium.ttf"
  font "Proza-Libre-#{version}/Fonts/ProzaLibre-MediumItalic.ttf"
  font "Proza-Libre-#{version}/Fonts/ProzaLibre-Regular.ttf"
  font "Proza-Libre-#{version}/Fonts/ProzaLibre-SemiBold.ttf"
  font "Proza-Libre-#{version}/Fonts/ProzaLibre-SemiBoldItalic.ttf"

  # No zap stanza required
end
