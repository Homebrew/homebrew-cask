cask 'go-agent' do
  version '17.11.0-5520'
  sha256 'ead9a105b5a8d1a807a8465cbb757cfd0f9df5b33bd07990ee8df935fbce8e74'

  # download.gocd.io/binaries was verified as official when first introduced to the cask
  url "https://download.gocd.io/binaries/#{version}/osx/go-agent-#{version}-osx.zip"
  appcast 'https://github.com/gocd/gocd/releases.atom',
          checkpoint: '9e3a88815202ffed76a1665fe59343076982308a8fcaa193606cbf3f92a03235'
  name 'Go Agent'
  homepage 'https://www.gocd.org/'

  app 'Go Agent.app'
end
