cask 'mountain-duck' do
  version '1.1.3.3497'
  sha256 '32fc791eedd94d5c4006b93b14c04fc1d0fcec82d3c956aaa7cb960225355e10'

  url "https://dist.mountainduck.io/Mountain%20Duck-#{version}.zip"
  appcast 'https://version.mountainduck.io/changelog.rss',
          checkpoint: '9373147d540dda71969be8d47bc2e050210a1e7755c12eb6ecb20bc16f859014'
  name 'Mountain Duck'
  homepage 'https://mountainduck.io/'
  license :commercial

  app 'Mountain Duck.app'
end
