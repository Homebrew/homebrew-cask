cask 'aircall' do
  version '1.1.5'
  sha256 '5ac208d89f0448b18ce2cd4d395dc1bbc4e251174d39df3db1fc623737b27dbb'

  url "http://electron.aircall.io/download/#{version}/osx"
  appcast 'http://electron.aircall.io/update/osx/1.1.0',
          checkpoint: '11e07a86a12d9363c75d65af1b27b16b80c04419aae8920bc8e6434874cc3db4'
  name 'Aircall'
  homepage 'https://aircall.io/'

  auto_updates true

  app 'Aircall.app'
end
