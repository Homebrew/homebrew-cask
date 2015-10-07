cask :v1 => 'slidemode' do
  version '0.0.5'
  sha256 '0c417eb7c4ca57da318260ad1d023ed8ad06deab74d3c0ae0a5d9658b34ab68c'

  url "http://www.teaksoftware.com/workspace/files/slidemode#{version.delete('.')}.dmg"
  appcast 'http://teaksoftware.com/appcasts/smappcast.xml',
          :sha256 => 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855'
  name 'SlideMode'
  homepage 'http://teaksoftware.com/app/slidemode'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'SlideMode.app'
end
