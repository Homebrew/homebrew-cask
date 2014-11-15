cask :v1 => 'shotcut' do
  version '14.10.05'
  sha256 '8d2dc72bde1fd9cd2646a9bf93fd3e9c0a91c56a5274a046cb21706ba9a490a6'

  url "https://github.com/mltframework/shotcut/releases/download/v#{version.gsub(/\.\d{2}$/, '')}/shotcut-osx-x86_64-#{version.gsub('.', '')}.dmg"
  homepage 'http://www.shotcut.org/'
  license :oss

  app 'Shotcut.app'
end
