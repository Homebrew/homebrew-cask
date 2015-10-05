cask :v1 => 'namechanger' do
  version '3.0.0'
  sha256 'ab0cf99c272a113e7cfdfd6ad781d4dca1667ad943ef95958c51762c555915fd'

  url "http://www.mrrsoftware.com/Downloads/NameChanger/Updates/NameChanger-#{version.gsub('.','_')}.zip"
  appcast 'http://mrrsoftware.com/Downloads/NameChanger/Updates/NameChangerSoftwareUpdates.xml',
          :sha256 => 'ff19ba484ad308ac0238031e79b0b2eaa604da9fe8573b8eecc2d19f89bc4c6e'
  name 'NameChanger'
  homepage 'http://www.mrrsoftware.com/MRRSoftware/NameChanger.html'
  license :gratis

  app 'NameChanger.app'
end
