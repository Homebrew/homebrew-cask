cask 'eloquent' do
  version '2.5.1'
  sha256 'f70d242b0afaa2c2067383ea51ccb0e43b93cc1013a779030150af8d35a82f45'

  url "https://github.com/mdbergmann/Eloquent/releases/download/#{version}/Eloquent-#{version}.app.zip"
  appcast 'https://github.com/mdbergmann/Eloquent/releases.atom',
          checkpoint: 'fb7fb116ea130507dc6341b97a11985ed535af69b9712f699a711db9c9b6f57c'
  name 'Eloquent'
  homepage 'https://github.com/mdbergmann/Eloquent'

  app 'Eloquent.app'

  zap trash: [
               '~/Library/Application Support/Eloquent',
               '~/Library/Caches/org.crosswire.Eloquent',
               '~/Library/Logs/Eloquent.log',
             ]
end
