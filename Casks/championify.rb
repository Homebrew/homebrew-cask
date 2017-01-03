cask 'championify' do
  version '2.0.1'
  sha256 '28361881ce139fff709e8714842cc12ed396e32693a3bda99b9f4b36fc480237'

  url "https://github.com/dustinblackman/Championify/releases/download/#{version}/Championify-OSX-#{version}.dmg"
  appcast 'https://github.com/dustinblackman/Championify/releases.atom',
          checkpoint: '0b19f924de37bb8c9709cac2b436be798b05ac3c3c23023aa3b9cea744792832'
  name 'Championify'
  homepage 'https://github.com/dustinblackman/Championify/'

  app 'Championify.app'
end
