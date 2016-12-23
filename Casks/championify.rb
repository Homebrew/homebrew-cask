cask 'championify' do
  version '2.0.0'
  sha256 '092332a6aaf06309180c82a93a1a9b7a874e125cfefe13337db5199899054624'

  url "https://github.com/dustinblackman/Championify/releases/download/#{version}/Championify-OSX-#{version}.dmg"
  appcast 'https://github.com/dustinblackman/Championify/releases.atom',
          checkpoint: '8660f3a5723d3b345dd7efbfdf3e4924c5c37294d89124bbad80c0fb8f760660'
  name 'Championify'
  homepage 'https://github.com/dustinblackman/Championify/'

  app 'Championify.app'
end
