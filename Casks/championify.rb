cask 'championify' do
  version '2.1.1'
  sha256 'eedcae6c28811691af71b0c509a8b968b19889e3ad84b2b670c8478617a772d4'

  url "https://github.com/dustinblackman/Championify/releases/download/#{version}/Championify-OSX-#{version}.dmg"
  appcast 'https://github.com/dustinblackman/Championify/releases.atom',
          checkpoint: '08971007fff83c5c18964a1e3c6a2838000718d8c56a3a09444a5ca532a140d6'
  name 'Championify'
  homepage 'https://github.com/dustinblackman/Championify/'

  app 'Championify.app'
end
