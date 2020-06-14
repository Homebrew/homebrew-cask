cask 'coteditor' do
  if MacOS.version <= :yosemite
    version '3.2.8'
    sha256 '73dd20d27b75c7b0c46242a465adb3df5b5f0b901f42c5a9a85777a57c4a17d6'
  else
    version '3.9.1'
    sha256 '37a03792fe673c59d80e127ec826a8168b1d20fdbcd07ee976b54a5ae15f592e'
  end

  # github.com/coteditor/CotEditor/ was verified as official when first introduced to the cask
  url "https://github.com/coteditor/CotEditor/releases/download/#{version}/CotEditor_#{version}.dmg"
  appcast 'https://github.com/coteditor/CotEditor/releases.atom'
  name 'CotEditor'
  homepage 'https://coteditor.com/'

  auto_updates true

  app 'CotEditor.app'
  binary "#{appdir}/CotEditor.app/Contents/SharedSupport/bin/cot"

  zap trash: [
               '~/Library/Application Scripts/com.coteditor.CotEditor',
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.coteditor.coteditor.sfl*',
               '~/Library/Caches/com.apple.helpd/SDMHelpData/Other/English/HelpSDMIndexFile/com.coteditor.CotEditor.help*',
               '~/Library/Caches/com.apple.helpd/SDMHelpData/Other/Japanese/HelpSDMIndexFile/com.coteditor.CotEditor.help*',
               '~/Library/Containers/com.coteditor.CotEditor',
             ]
end
