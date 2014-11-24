cask :v1 => 'shotcut' do
  version '14.11.01'
  sha256 'f364c8849ed79376006209bfb0146d1449461bb3b18a1548c55b3c8fb93f00ba'

  url "https://github.com/mltframework/shotcut/releases/download/v#{version.gsub(/\.\d{2}$/, '')}/shotcut-osx-x86_64-#{version.gsub('.', '')}.dmg"
  homepage 'http://www.shotcut.org/'
  license :oss

  app 'Shotcut.app'
end
