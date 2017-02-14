cask 'championify' do
  version '2.0.2'
  sha256 'a48778cb9b15bf7b280445d0706087cd0eb920af40ccb2059a9e7c9f782a0d26'

  url "https://github.com/dustinblackman/Championify/releases/download/#{version}/Championify-OSX-#{version}.dmg"
  appcast 'https://github.com/dustinblackman/Championify/releases.atom',
          checkpoint: '89cdfdbaf8cf490ef6cb6be8fd5ad295a07ce1c217d1e5a9734469800f5fadb1'
  name 'Championify'
  homepage 'https://github.com/dustinblackman/Championify/'

  app 'Championify.app'
end
