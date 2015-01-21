cask :v1 => 'shotcut' do
  version '15.01.05'
  sha256 '8777d19534e9e525e3ad4b45151ca4850f36e9e35f1f6fb321fdeade9000a8dc'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/mltframework/shotcut/releases/download/v#{version.sub(/\.\d+$/, '')}/shotcut-osx-x86_64-#{version.gsub('.', '')}.dmg"
  homepage 'http://www.shotcut.org/'
  license :oss

  app 'Shotcut.app'
end
