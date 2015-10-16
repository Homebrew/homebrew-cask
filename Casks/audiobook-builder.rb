cask :v1 => 'audiobook-builder' do
  version '1.5.3'
  sha256 '8ae30fcc3811292c84a23febb50c78e110bc7514f0d3085ce21b427f45be5d4c'

  url "http://www.splasm.com/downloads/audiobookbuilder/Audiobook%20Builder%20#{version}.zip"
  name 'Audiobook Builder'
  appcast 'http://www.splasm.com/versions/audiobookbuilder_sparkle.xml',
          :sha256 => '0fa38f9d15f10be75de37b6ea556a486e9073b9a176fae5a2f6e8602b596ed5c'
  homepage 'http://www.splasm.com/audiobookbuilder/'
  license :commercial

  app 'Audiobook Builder.app'
end
