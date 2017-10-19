cask 'cloudytabs' do
  version '1.7'
  sha256 '7cf09822233e13be6d2b229a42f20cb06519939b722e10ee28eed50ff4dac22e'

  url "https://github.com/josh-/CloudyTabs/releases/download/v#{version}/CloudyTabs.zip"
  appcast 'https://github.com/josh-/CloudyTabs/releases.atom',
          checkpoint: '3fc3f54a91ed4853c2baa31c2f167d4c322ee0f6bd57d10441035ac8a0ef6fcb'
  name 'CloudyTabs'
  homepage 'https://github.com/josh-/CloudyTabs/'

  app 'CloudyTabs.app'
end
