cask 'monodraw' do
  version 'b97'
  sha256 'df8665c7d9aabf92114b37fc305e57ca7f920b9d5bef3352d3053a33427a4290'

  url "https://updates.helftone.com/monodraw/downloads/Monodraw-#{version}.zip"
  appcast 'https://updates.helftone.com/monodraw/appcast-beta.xml',
          checkpoint: 'd50ef187befb26c6366d68b897525ebdcc3cd952cfd86a7001cceeb4f8976efe'
  name 'Monodraw'
  homepage 'https://monodraw.helftone.com/'

  app 'Monodraw.app'

  zap trash: [
               '~/Library/Application Support/com.helftone.monodraw',
               '~/Library/Caches/com.helftone.monodraw',
               '~/Library/Caches/com.apple.helpd/SDMHelpData/Other/English/HelpSDMIndexFile/com.helftone.monodraw.help*',
               '~/Library/Preferences/com.helftone.monodraw.plist',
             ]
end
