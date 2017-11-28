cask 'franz' do
  version '5.0.0-beta.14'
  sha256 'ced44b6c9e6bd68e6c467aca283d901829aa6e9614c487fc898bb8076b044ae7'

  # github.com/meetfranz/franz was verified as official when first introduced to the cask
  url "https://github.com/meetfranz/franz/releases/download/v#{version}/franz-#{version}.dmg"
  appcast 'https://github.com/meetfranz/franz/releases.atom',
          checkpoint: 'e2ff1ff90f316ba2e14ddcd8e97f8f2a7f86e7cf500058531809ee59c71a49a9'
  name 'Franz'
  homepage 'https://meetfranz.com/'

  app 'Franz.app'
end
