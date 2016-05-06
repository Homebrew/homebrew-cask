cask 'kitematic' do
  version '0.10.2'
  sha256 'cd89675c4fb2abf4ad8a88e417d366c4595a00a9cf2006c6d378dc127a46e4e3'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/kitematic/kitematic/releases/download/v#{version}/Kitematic-#{version}-Mac.zip"
  appcast 'https://github.com/kitematic/kitematic/releases.atom',
          checkpoint: '9120baa70f178d2380935eae5cddf17a6f81f8120e8bbb162cf08f6db98c4f3f'
  name 'Kitematic'
  homepage 'https://kitematic.com/'
  license :apache

  app 'Kitematic (Beta).app'

  zap delete: [
                '~/Library/Application Support/Kitematic',
                '~/Kitematic',
              ]
end
