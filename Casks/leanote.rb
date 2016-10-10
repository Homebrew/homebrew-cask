cask 'leanote' do
  version '2.1'
  sha256 '62feedb4b8ed2e6b2fefecdd8763c92ad394543d2ee27aa78f9b1251c00e4a9d'

  # sourceforge.net/leanote-desktop-app was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/leanote-desktop-app/#{version}/leanote-desktop-mac-v#{version}.zip"
  appcast 'https://github.com/leanote/desktop-app/releases.atom',
          checkpoint: '19a1cc4cc1347a96093670e3fa3945b0a2f9cfbc5c806423e240a12645c97a8e'
  name 'Leanote'
  homepage 'http://leanote.org'

  app 'Leanote.app'
end
