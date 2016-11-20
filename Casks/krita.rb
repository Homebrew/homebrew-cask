cask 'krita' do
  version '3.0.1'
  sha256 '1d120a268469bb90c617e3dde0af63db27846652fe1f78cf984f68c27ce24bf3'

  # kde.org/krita was verified as official when first introduced to the cask
  url "https://files.kde.org/krita/#{version.major}/osx/krita-#{version}.dmg"
  name 'Krita'
  homepage 'https://krita.org/'

  app 'Krita.app'
end
