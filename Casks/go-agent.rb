cask 'go-agent' do
  version '18.1.0-5937'
  sha256 '5edb389977cf9630078e1ff0dd716ca824fdc55af07f3c69194e4c3616d740e5'

  # download.gocd.io/binaries was verified as official when first introduced to the cask
  url "https://download.gocd.io/binaries/#{version}/osx/go-agent-#{version}-osx.zip"
  appcast 'https://github.com/gocd/gocd/releases.atom',
          checkpoint: '379c3238931056d4232f6422ef965db0a870b6aad8b2ccee09df16f584bb7155'
  name 'Go Agent'
  homepage 'https://www.gocd.org/'

  app 'Go Agent.app'
end
