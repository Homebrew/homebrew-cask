cask 'eloquent' do
  version '2.6.1'
  sha256 '813a6f7ab005c8f2c8c56efcfbe04c0084e5c197b7fe3d3f48a0d7e670b5df6c'

  url "https://github.com/mdbergmann/Eloquent/releases/download/#{version}/Eloquent-#{version}.app.zip"
  appcast 'https://github.com/mdbergmann/Eloquent/releases.atom',
          checkpoint: 'af722d9c7f36969824627d4f7d4555616681f429f044d97bf9c2f041bb234df2'
  name 'Eloquent'
  homepage 'https://github.com/mdbergmann/Eloquent'

  app 'Eloquent.app'

  zap trash: [
               '~/Library/Application Support/Eloquent',
               '~/Library/Caches/org.crosswire.Eloquent',
               '~/Library/Logs/Eloquent.log',
             ]
end
