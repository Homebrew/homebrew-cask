cask 'go-server' do
  version '17.5.0-5095'
  sha256 '8f2ed15fa4e20918a2540f45678beb0d7f956d8586524ed58ac9f0fedaecf7d6'

  # download.gocd.io/binaries was verified as official when first introduced to the cask
  url "https://download.gocd.io/binaries/#{version}/osx/go-server-#{version}-osx.zip"
  appcast 'https://github.com/gocd/gocd/releases.atom',
          checkpoint: '4e4f162d063d75ea1ff1642a0c0544cf6c628b1a915329e8c5fbf88da2dd6ce8'
  name 'Go Server'
  homepage 'https://www.gocd.org/'

  app 'Go Server.app'
end
