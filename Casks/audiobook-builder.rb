cask 'audiobook-builder' do
  version '1.5.4'
  sha256 '8ba09725221c44c991d934334d8e6562bcf7408a2faafdb42236ef4c9244def3'

  url "http://www.splasm.com/downloads/audiobookbuilder/Audiobook%20Builder%20#{version}.dmg"
  appcast 'http://www.splasm.com/versions/audiobookbuilder_sparkle.xml',
          :sha256 => '368a969cda2bd66baa7b8c24c7b861cee29c86d2fb7a8e9392bcddc87ac65e2b'
  name 'Audiobook Builder'
  homepage 'http://www.splasm.com/audiobookbuilder/'
  license :commercial

  app 'Audiobook Builder.app'
end
