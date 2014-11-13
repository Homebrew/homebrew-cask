cask :v1 => 'audiobook-builder' do
  version :latest
  sha256 :no_check

  url 'http://www.splasm.com/downloads/audiobookbuilder/Audiobook%20Builder.dmg'
  homepage 'http://www.splasm.com/audiobookbuilder/'
  license :commercial

  app 'Audiobook Builder.app'
end
