class Shotcut < Cask
  version '14.07.01'
  sha256 'aef1d7223403b704977c2849aa3129a45a0af2189813138756ded349fe98f934'

  url "https://github.com/mltframework/shotcut/releases/download/v#{version.gsub(/\.\d{2}$/, '')}/shotcut-osx-x86_64-#{version.gsub('.', '')}.dmg"
  homepage 'http://www.shotcut.org/'

  link 'Shotcut.app'
end
