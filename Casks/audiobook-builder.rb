cask :v1 => 'audiobook-builder' do
  version '1.5.3'
  sha256 '8ae30fcc3811292c84a23febb50c78e110bc7514f0d3085ce21b427f45be5d4c'

  url "http://www.splasm.com/downloads/audiobookbuilder/Audiobook%20Builder%20#{version}.zip"
  name 'Audiobook Builder'
  appcast 'http://www.splasm.com/versions/audiobookbuilder_sparkle.xml',
          :sha256 => 'b45665dd723d5c45654b6e5366eb693c61e4c262df08248a14a47c54994c4e92'
  homepage 'http://www.splasm.com/audiobookbuilder/'
  license :commercial

  app 'Audiobook Builder.app'
end
