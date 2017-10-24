cask 'bonjeff' do
  version '1.0.2'
  sha256 '4b5b2e277200698130dc3e9a5c656799c618ea2032c47da5c7c7a79edf97b91c'

  url "https://github.com/lapcat/Bonjeff/releases/download/v#{version}/Bonjeff.#{version}.zip"
  appcast 'https://github.com/lapcat/Bonjeff/releases.atom',
          checkpoint: '545f99d377a875b39d03ad037d298bbf44d6622f77f282ad6fc1ea1fd565eaa3'
  name 'Bonjeff'
  homepage 'https://github.com/lapcat/Bonjeff'

  depends_on macos: '>= :sierra'

  app 'Bonjeff.app'

  zap delete: [
                '~/Library/Application Scripts/com.lapcatsoftware.bonjeff',
                '~/Library/Containers/com.lapcatsoftware.bonjeff',
              ]
end
