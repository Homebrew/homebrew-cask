cask :v1 => 'shotcut' do
  version '15.11.01'
  sha256 '1a4dc85a01a877e5a68ef8b35aa937e469c808fae6471f22bfc38fe7b8814de4'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/mltframework/shotcut/releases/download/v#{version.sub(/\.\d+$/, '')}/shotcut-osx-x86_64-#{version.delete('.')}.dmg"
  appcast 'https://github.com/mltframework/shotcut/releases.atom'
  name 'Shotcut'
  homepage 'http://www.shotcut.org/'
  license :gpl

  app 'Shotcut.app'
end
