cask 'seashore' do
  version '2.4.7'
  sha256 '3cd1dbfbe0895d9df60a19d00471ecea7cef81c105c8ad57a9bca7bb12c07146'

  url "https://github.com/robaho/seashore/releases/download/v#{version}/seashore-bin-#{version}.dmg"
  appcast 'https://github.com/robaho/seashore/releases.atom'
  name 'Seashore'
  homepage 'https://github.com/robaho/seashore'

  app 'Seashore.app'
end
