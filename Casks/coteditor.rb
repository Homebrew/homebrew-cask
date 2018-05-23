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
    version '3.4.0'
    sha256 'dee4815e278e19712918243d3f4644bcf4cf5aea91b15f888d5b8ca8cbc6df6f'
  end

  # github.com/coteditor/CotEditor was verified as official when first introduced to the cask
  url "https://github.com/coteditor/CotEditor/releases/download/#{version}/CotEditor_#{version}.dmg"
  appcast 'https://github.com/coteditor/CotEditor/releases.atom',
          checkpoint: 'ede8cee663166d59a6f7cbc3e0ea27fe746a7c356a5a011a74da0f68b05eb8fc'
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
