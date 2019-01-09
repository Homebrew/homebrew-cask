cask 'bonjeff' do
  version '1.0.6'
  sha256 '637d766c175650e05d398f94d4b1e7d0bd12755c00303d22f929e582c42c76dc'

  url "https://github.com/lapcat/Bonjeff/releases/download/v#{version}/Bonjeff.#{version}.zip"
  appcast 'https://github.com/lapcat/Bonjeff/releases.atom'
  name 'Bonjeff'
  homepage 'https://github.com/lapcat/Bonjeff'

  depends_on macos: '>= :sierra'

  app 'Bonjeff.app'

  zap trash: [
               '~/Library/Application Scripts/com.lapcatsoftware.bonjeff',
               '~/Library/Containers/com.lapcatsoftware.bonjeff',
             ]
end
