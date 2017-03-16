cask 'rasoft' do
  version '3.8'
  sha256 'c077fdb0766938d336ac2f80fe8cf2d0ae3316142af8d39849932c59232e196c'

  url "https://www.rakocontrols.com/media/1399/rasoft-pro-#{version.no_dots}.dmg"
  appcast 'https://rakocontrols.com/useful-information/rasoftpro/',
          checkpoint: 'de8cf9f7db68d6f8fbb980e2a6f576fa2e2b15d7afbfa90b2e234bf1aaea3361'
  name 'Rasoft Pro'
  homepage 'https://www.rakocontrols.com/support/software/'

  app 'Rasoft Pro.app'
end
