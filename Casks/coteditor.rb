cask 'coteditor' do
  if MacOS.version <= :lion
    version '1.5.4'
    sha256 '444133083698c7c94c2b029644f39a0e36982ae34c24745789fa890626188347'
  elsif MacOS.version <= :mavericks
    version '2.5.7'
    sha256 'f2c6eed9bfa31999f559396642e7bec0eb90ce0e3398f266fed8b3db5bdab37c'
  elsif MacOS.version <= :yosemite
    version '3.2.8'
    sha256 '73dd20d27b75c7b0c46242a465adb3df5b5f0b901f42c5a9a85777a57c4a17d6'
  else
    version '3.3.5'
    sha256 '1e779c830409c622a02b8a57a6581f8d1f89d16e1472edc52dd93dd20a81540c'
  end

  # github.com/coteditor/CotEditor was verified as official when first introduced to the cask
  url "https://github.com/coteditor/CotEditor/releases/download/#{version}/CotEditor_#{version}.dmg"
  appcast 'https://github.com/coteditor/CotEditor/releases.atom',
          checkpoint: '97684407d1d6dc6a858d9376ead6e6906a1d65ed7ba00b118d5aac37437943a3'
  name 'CotEditor'
  homepage 'https://coteditor.com/'

  depends_on macos: '>= :lion'

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
