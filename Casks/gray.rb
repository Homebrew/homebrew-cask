cask 'gray' do
  version '0.8.0'
  sha256 'e52f839e40dad4a26620dd4de838f069626409ccd8fff96563f44b3165d6e67d'

  url "https://github.com/zenangst/Gray/releases/download/#{version}/Gray.zip"
  appcast 'https://github.com/zenangst/Gray/releases.atom'
  name 'Gray'
  homepage 'https://github.com/zenangst/Gray'

  app 'Gray.app'
end
