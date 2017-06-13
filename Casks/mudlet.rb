cask 'mudlet' do
  version '3.1.0'
  sha256 'b29fbb950c2292231d253b40f58739093c39dea388362dfc9fe0a9f344e98cbd'

  url "http://www.mudlet.org/download/Mudlet-#{version}.dmg"
  appcast 'https://github.com/Mudlet/Mudlet/releases.atom',
          checkpoint: '533a8fd5aa78ba4c215e7414f3fce9e94ddbf67415c278c3d197bd4093c31ab9'
  name 'Mudlet'
  homepage 'http://www.mudlet.org/'

  app 'Mudlet.app'
end
