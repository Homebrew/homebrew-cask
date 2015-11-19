cask :v1 => 'namechanger' do
  version '3.0.1'
  sha256 'a26635151ec7632652b8f57d4fceb42176dc85b9109da7f7b5db5688bbecd42b'

  url "http://www.mrrsoftware.com/Downloads/NameChanger/Updates/NameChanger-#{version.gsub('.','_')}.zip"
  appcast 'http://mrrsoftware.com/Downloads/NameChanger/Updates/NameChangerSoftwareUpdates.xml',
          :sha256 => 'ff19ba484ad308ac0238031e79b0b2eaa604da9fe8573b8eecc2d19f89bc4c6e'
  name 'NameChanger'
  homepage 'http://www.mrrsoftware.com/MRRSoftware/NameChanger.html'
  license :gratis

  app 'NameChanger.app'
end
