cask 'seashore' do
  version '2.5.0'
  sha256 '5fbebaa97f6acbc919533e6eff9ef287a3a65fbf85bac2abac818a4485de5932'

  url "https://github.com/robaho/seashore/releases/download/v#{version}/seashore-bin-#{version}.dmg"
  appcast 'https://github.com/robaho/seashore/releases.atom'
  name 'Seashore'
  homepage 'https://github.com/robaho/seashore'

  app 'Seashore.app'
end
