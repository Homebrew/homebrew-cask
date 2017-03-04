cask 'adpassmon' do
  version '2.20.19'
  sha256 'a295ac8acb99340d5165566e1812a94d9187ea4325db0ea0a0ffd802333e2265'

  url "https://github.com/macmule/ADPassMon/releases/download/#{version}/ADPassMon.app.zip"
  appcast 'https://github.com/macmule/ADPassMon/releases.atom',
          checkpoint: '3c7b29281582e38dfc62205646c51bc9a60c5f8038609cc9e15aaf4c6d87f7e0'
  name 'ADPassMon'
  homepage 'https://github.com/macmule/ADPassMon'

  app 'ADPassMon.app'
end
