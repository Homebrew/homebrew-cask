cask 'championify' do
  version '2.0.6'
  sha256 'a04a0c71f9e3ede49037db19efe6b9a203fee7930dbb6d76c2193706839771de'

  url "https://github.com/dustinblackman/Championify/releases/download/#{version}/Championify-OSX-#{version}.dmg"
  appcast 'https://github.com/dustinblackman/Championify/releases.atom',
          checkpoint: 'badfb4d023789324753d29c8fd0d1b1940a9df13cdfe174011c6a3cc1560cef5'
  name 'Championify'
  homepage 'https://github.com/dustinblackman/Championify/'

  app 'Championify.app'
end
