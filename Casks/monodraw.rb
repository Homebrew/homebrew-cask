cask 'monodraw' do
  version '1.3.0,b102'
  sha256 '9ec85aea974b0b3c773e7ace96405151bc7c8769d2d899410d30119a17a901da'

  url "https://updates.helftone.com/monodraw/downloads/Monodraw-#{version.after_comma}.zip"
  appcast 'https://updates.helftone.com/monodraw/appcast-beta.xml',
          checkpoint: 'b857ba55dbc0892672aeaf79b9cab7b4fdd42df4a10f421675cd9c3048f784bb'
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
