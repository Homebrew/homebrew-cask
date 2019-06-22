cask 'seashore' do
  version '2.4.6'
  sha256 '50c8aaf94dac2e1a1584460a07d92f16695cb4def6ec5546acd26903b6182e7d'

  url "https://github.com/robaho/seashore/releases/download/v#{version}/seashore-bin-#{version}.dmg"
  appcast 'https://github.com/robaho/seashore/releases.atom'
  name 'Seashore'
  homepage 'https://github.com/robaho/seashore'

  app 'Seashore.app'
end
