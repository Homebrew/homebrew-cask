cask 'rasoft' do
  version '3.8'
  sha256 'c077fdb0766938d336ac2f80fe8cf2d0ae3316142af8d39849932c59232e196c'

  url "https://www.rakocontrols.com/media/1399/rasoft-pro-#{version.no_dots}.dmg"
  appcast 'https://www.rakocontrols.com/support/software/',
          checkpoint: '37baa0073b1c79aebf41bc5ce5f4f54dee0694684d6aced04fd5bf155f5774e8'
  name 'Rasoft Pro'
  homepage 'https://www.rakocontrols.com/support/software/'

  app 'Rasoft Pro.app'
end
