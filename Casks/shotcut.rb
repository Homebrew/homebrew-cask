cask :v1 => 'shotcut' do
  version '14.11.01'
  sha256 'f364c8849ed79376006209bfb0146d1449461bb3b18a1548c55b3c8fb93f00ba'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/mltframework/shotcut/releases/download/v#{version.sub(/\.\d+$/, '')}/shotcut-osx-x86_64-#{version.gsub('.', '')}.dmg"
  homepage 'http://www.shotcut.org/'
  license :oss

  app 'Shotcut.app'
end
