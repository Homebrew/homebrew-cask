cask 'championify' do
  version '2.1.4'
  sha256 '64db96b2d1dc0e6c5a208565a035d7948fbcddeb60ca22d769c7edaa9b28db78'

  url "https://github.com/dustinblackman/Championify/releases/download/#{version}/Championify-OSX-#{version}.dmg"
  appcast 'https://github.com/dustinblackman/Championify/releases.atom',
          checkpoint: 'c8ab08e38f553f47c264c72bcdcd40672161a3e663836cbb2f44174a359a095d'
  name 'Championify'
  homepage 'https://github.com/dustinblackman/Championify/'

  app 'Championify.app'
end
