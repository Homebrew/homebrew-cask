cask 'championify' do
  version '2.1.3'
  sha256 '2973b6d457fb2cc6a8ebbe50fefee18ef87f4619fa686cbdf115382ec1650e14'

  url "https://github.com/dustinblackman/Championify/releases/download/#{version}/Championify-OSX-#{version}.dmg"
  appcast 'https://github.com/dustinblackman/Championify/releases.atom',
          checkpoint: '76e5368e9fd671b7e9aad2007104ffc0809c10ade70fcb73daa74c59bab73ee6'
  name 'Championify'
  homepage 'https://github.com/dustinblackman/Championify/'

  app 'Championify.app'
end
