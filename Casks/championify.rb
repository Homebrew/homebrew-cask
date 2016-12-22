cask 'championify' do
  version '2.0.0'
  sha256 '092332a6aaf06309180c82a93a1a9b7a874e125cfefe13337db5199899054624'

  url "https://github.com/dustinblackman/Championify/releases/download/#{version}/Championify-OSX-#{version}.dmg"
  name 'Championify'
  homepage 'https://github.com/dustinblackman/Championify/'

  app 'Championify.app'
end
