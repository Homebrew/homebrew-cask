cask 'krita' do
  version '3.0'
  sha256 '8c678bdf6804c5b8decf08093fce809f2c78f664604dfe91b4ded91b3b5e4e00'

  # kde.org/krita was verified as official when first introduced to the cask
  url "https://files.kde.org/krita/#{version.major}/osx/krita-#{version}.dmg"
  name 'Krita'
  homepage 'https://krita.org/'

  app 'Krita.app'
end
