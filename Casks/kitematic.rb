cask 'kitematic' do
  version '0.17.3'
  sha256 'f7822079a1c1747dabeebd95a57f46d50847f77d3f567862e7b624bff309bd2c'

  # github.com/docker/kitematic was verified as official when first introduced to the cask
  url "https://github.com/docker/kitematic/releases/download/v#{version}/Kitematic-#{version}-Mac.zip"
  appcast 'https://github.com/docker/kitematic/releases.atom',
          checkpoint: 'ada402986944f964fcd4731bb2644bef40c5b2ebd4e58c8e797b042f6a4ed489'
  name 'Kitematic'
  homepage 'https://kitematic.com/'

  app 'Kitematic (Beta).app'

  zap trash: [
               '~/Kitematic',
               '~/Library/Application Support/Kitematic',
               '~/Library/Caches/Kitematic',
               '~/Library/Preferences/com.electron.kitematic_(beta).plist',
               '~/Library/Saved Application State/com.electron.kitematic_(beta).savedState',
             ]
end
