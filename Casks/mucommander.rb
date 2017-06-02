cask 'mucommander' do
  version '0.9.1'
  sha256 'e623a1ecdf198fae40d8f42a8898667f5fc38efbc158bfc01df6c0b746d22934'

  # github.com/mucommander/mucommander was verified as official when first introduced to the cask
  url "https://github.com/mucommander/mucommander/releases/download/#{version}/mucommander-#{version}.dmg"
  appcast 'https://github.com/mucommander/mucommander/releases.atom',
          checkpoint: 'dc6b3cc95d6a209036e2b564854f85dd3778abdee72b0f53f9671ae4134e6500'
  name 'muCommander'
  homepage 'http://www.mucommander.com/'

  app 'muCommander.app'
end
