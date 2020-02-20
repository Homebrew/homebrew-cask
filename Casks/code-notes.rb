cask 'code-notes' do
  version '1.2.3'
  sha256 '6c1677382088bba2b480d04cc07ecc814e39cb1c79050fe5f2fbb73115fa16c3'

  # github.com/lauthieb/code-notes was verified as official when first introduced to the cask
  url "https://github.com/lauthieb/code-notes/releases/download/#{version}/code-notes-#{version}.dmg"
  appcast 'https://github.com/lauthieb/code-notes/releases.atom'
  name 'Code Notes'
  homepage 'https://lauthieb.github.io/code-notes/'

  app 'Code Notes.app'
end
