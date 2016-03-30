cask 'audiobook-builder' do
  version '1.5.4'
  sha256 '8ba09725221c44c991d934334d8e6562bcf7408a2faafdb42236ef4c9244def3'

  url "http://www.splasm.com/downloads/audiobookbuilder/Audiobook%20Builder%20#{version}.dmg"
  appcast 'http://www.splasm.com/versions/audiobookbuilder_sparkle.xml',
          checkpoint: 'e82ec1ee1623b4d41d69458b6af46fba041259f3cc2ed161c88c5cff6722c43f'
  name 'Audiobook Builder'
  homepage 'http://www.splasm.com/audiobookbuilder/'
  license :commercial

  app 'Audiobook Builder.app'
end
