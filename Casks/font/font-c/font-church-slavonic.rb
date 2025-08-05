cask "font-church-slavonic" do
  version "2.2.1"
  sha256 "6fd44c6fb4fecc01ecea8dda6efc18bf46646f2e5d997c7d60e0cbae3aa8ff2e"

  url "https://github.com/typiconman/fonts-cu/releases/download/v#{version}/fonts-churchslavonic.zip"
  name "Church Slavonic Fonts"
  homepage "https://github.com/typiconman/fonts-cu"

  font "fonts-churchslavonic/Acathist-Regular.otf"
  font "fonts-churchslavonic/CathismaUnicode.otf"
  font "fonts-churchslavonic/FedorovskUnicode.otf"
  font "fonts-churchslavonic/IndictionUnicode.otf"
  font "fonts-churchslavonic/MenaionUnicode.otf"
  font "fonts-churchslavonic/MezenetsUnicode.otf"
  font "fonts-churchslavonic/MonomakhUnicode.otf"
  font "fonts-churchslavonic/OglavieUnicode.otf"
  font "fonts-churchslavonic/PochaevskUnicode.otf"
  font "fonts-churchslavonic/PomorskyUnicode.otf"
  font "fonts-churchslavonic/PonomarUnicode.otf"
  font "fonts-churchslavonic/Shafarik-Regular.otf"
  font "fonts-churchslavonic/TriodionUnicode.otf"
  font "fonts-churchslavonic/VertogradUnicode.otf"
  font "fonts-churchslavonic/Voskresensky-Regular.otf"

  # No zap stanza required
end
