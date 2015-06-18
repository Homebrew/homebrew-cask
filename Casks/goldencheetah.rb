cask :v1 => 'goldencheetah' do
  version '3.1'
  sha256 '53daceee5b54baa742278e370b2bada1ba02d32c9fa77afa757dd5cb51f4fb52'

  url "https://github.com/GoldenCheetah/GoldenCheetah/releases/download/v#{version}/GoldenCheetah-64bit-#{version}.0-QT5.dmg"
  appcast 'https://github.com/GoldenCheetah/GoldenCheetah/releases.atom'
  name 'GoldenCheetah'
  homepage 'http://www.goldencheetah.org/'
  license :gpl

  app 'GoldenCheetah.app'
end
