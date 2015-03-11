cask :v1 => 'kitematic' do
  version '0.5.10'
  sha256 '2257974c9bdb582f8886435ee8d0a2d5db81e45c6dc5a17b7e73bbf3362cc23b'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/kitematic/kitematic/releases/download/v#{version}/Kitematic-#{version}.zip"
  name 'Kitematic'
  homepage 'https://kitematic.com/'
  license :affero

  app 'Kitematic (Beta).app'

  zap :delete =>[
    '~/Library/Application\ Support/Kitematic',
    '~/Kitematic'
	]
end
