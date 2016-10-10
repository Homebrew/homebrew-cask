cask 'eloquent' do
  version '2.5.1'
  sha256 'f70d242b0afaa2c2067383ea51ccb0e43b93cc1013a779030150af8d35a82f45'

  url "https://github.com/mdbergmann/Eloquent/releases/download/#{version}/Eloquent-#{version}.app.zip"
  appcast 'https://github.com/mdbergmann/Eloquent/releases.atom',
          checkpoint: '6e60338304dbce613859c0883d191d7ec2dc81e8fec7bb431c6f05818601c994'
  name 'Eloquent'
  homepage 'https://github.com/mdbergmann/Eloquent'

  app 'Eloquent.app'

  zap delete: [
                '~/Library/Application Support/Eloquent',
                '~/Library/Caches/org.crosswire.Eloquent',
                '~/Library/Logs/Eloquent.log',
              ]
end
