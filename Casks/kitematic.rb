cask 'kitematic' do
  version '0.10.4'
  sha256 'a07400550902ff041c4ac13cc2e640c39a4b8f490287297a2ce13aa5560f6d7b'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/kitematic/kitematic/releases/download/v#{version}/Kitematic-#{version}-Mac.zip"
  appcast 'https://github.com/kitematic/kitematic/releases.atom',
          checkpoint: 'cce36ca3e5cbd6f7372eb9fbc494cef9450d199d6975345d5a9ac2ee2839fda6'
  name 'Kitematic'
  homepage 'https://kitematic.com/'
  license :apache

  app 'Kitematic (Beta).app'

  zap delete: [
                '~/Library/Application Support/Kitematic',
                '~/Kitematic',
              ]
end
