cask 'go-server' do
  version '18.1.0-5937'
  sha256 '1ab51326ae3109e90375a55ae27be21e7f8652c6d777ab9abe18ed86350da445'

  # download.gocd.io/binaries was verified as official when first introduced to the cask
  url "https://download.gocd.io/binaries/#{version}/osx/go-server-#{version}-osx.zip"
  appcast 'https://github.com/gocd/gocd/releases.atom',
          checkpoint: '379c3238931056d4232f6422ef965db0a870b6aad8b2ccee09df16f584bb7155'
  name 'Go Server'
  homepage 'https://www.gocd.org/'

  app 'Go Server.app'
end
