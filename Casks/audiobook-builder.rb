cask :v1 => 'audiobook-builder' do
  version :latest
  sha256 :no_check

  url 'http://www.splasm.com/downloads/audiobookbuilder/Audiobook%20Builder.dmg'
  name 'Audiobook Builder'
  appcast 'http://www.splasm.com/versions/audiobookbuilder_sparkle.xml',
          :sha256 => '0fa38f9d15f10be75de37b6ea556a486e9073b9a176fae5a2f6e8602b596ed5c'
  homepage 'http://www.splasm.com/audiobookbuilder/'
  license :commercial

  app 'Audiobook Builder.app'
end
