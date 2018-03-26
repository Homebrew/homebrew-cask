cask 'go-agent' do
  version '18.2.0-6228'
  sha256 '05d6f927ad8d473367f84cfd3b93832cdad18da97c13d18d6fe89e6fcb747272'

  # download.gocd.io/binaries was verified as official when first introduced to the cask
  url "https://download.gocd.io/binaries/#{version}/osx/go-agent-#{version}-osx.zip"
  appcast 'https://github.com/gocd/gocd/releases.atom',
          checkpoint: '85c4b79e99a44ff61809c6a72d2953d2654c02140e04200a5d1bda2a3e235f81'
  name 'Go Agent'
  homepage 'https://www.gocd.org/'

  app 'Go Agent.app'
end
