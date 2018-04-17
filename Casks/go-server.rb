cask 'go-server' do
  version '18.2.0-6228'
  sha256 'bff9894962ba6e2cba29d89406998e1ab26f5f90648f4fb8d7f5e20b3cfa734f'

  # download.gocd.io/binaries was verified as official when first introduced to the cask
  url "https://download.gocd.io/binaries/#{version}/osx/go-server-#{version}-osx.zip"
  appcast 'https://github.com/gocd/gocd/releases.atom',
          checkpoint: '85c4b79e99a44ff61809c6a72d2953d2654c02140e04200a5d1bda2a3e235f81'
  name 'Go Server'
  homepage 'https://www.gocd.org/'

  app 'Go Server.app'
end
