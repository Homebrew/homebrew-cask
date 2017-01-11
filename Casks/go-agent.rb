cask 'go-agent' do
  version '16.12.0-4352'
  sha256 'ec5446d45b4398b285bb8ca9ee7fed04c278aa112c1832d0944c87dffa8dbb28'

  url "https://download.gocd.io/binaries/#{version}/osx/go-agent-#{version}-osx.zip"
  appcast 'https://github.com/gocd/gocd/releases.atom',
          checkpoint: '6539c8829706600fcd7c5b25ee83d46c90946cf06b66f053f789ad57ceb911e7'
  name 'Go Agent'
  homepage 'https://www.gocd.io/'

  app 'Go Agent.app'
end
