cask 'porting-kit' do
  version '2.9.295'
  sha256 '5a8f1554033400a0eb1574c5f2a19d83c4a05e3f5190311cf71bc4c38c210ae1'

  url "http://portingkit.com/kit/Porting%20Kit%20#{version}.zip"
  appcast 'http://portingkit.com/kit/updatecast.xml',
          checkpoint: '9046dd206eb72355a44ad52e240250a61948535cec4819a3a609342c655e9ae8'
  name 'Porting Kit'
  homepage 'http://portingkit.com/en/'

  auto_updates true
  conflicts_with cask: 'porting-kit-legacy'
  depends_on macos: '>= :mountain_lion'

  app 'Porting Kit.app'

  zap trash: [
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/edu.ufrj.vitormm.porting-kit.sfl*',
               '~/Library/Application Support/Porting-Kit',
               '~/Library/Caches/edu.ufrj.vitormm.Porting-Kit',
               '~/Library/Cookies/edu.ufrj.vitormm.Porting-Kit.binarycookies',
               '~/Library/Preferences/edu.ufrj.vitormm.Porting-Kit.plist',
               '~/Library/Saved Application State/edu.ufrj.vitormm.Porting-Kit.savedState',
             ]
end
