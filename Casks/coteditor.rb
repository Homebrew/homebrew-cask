cask 'coteditor' do
  if MacOS.version <= :snow_leopard
    version '1.3.1'
    sha256 '5c871bd9de30fc3c76fc66acb4ea258d4d3762ae341181d65a7ef1f8de4751c5'
    # github.com/coteditor/CotEditor was verified as official when first introduced to the cask
    url "https://github.com/coteditor/CotEditor/releases/download/#{version}/CotEditor_#{version}_For10.4.dmg"
  elsif MacOS.version <= :lion
    version '1.5.4'
    sha256 '444133083698c7c94c2b029644f39a0e36982ae34c24745789fa890626188347'
    # github.com/coteditor/CotEditor was verified as official when first introduced to the cask
    url "https://github.com/coteditor/CotEditor/releases/download/#{version}/CotEditor_#{version}.dmg"
  elsif MacOS.version <= :mavericks
    version '2.5.7'
    sha256 'f2c6eed9bfa31999f559396642e7bec0eb90ce0e3398f266fed8b3db5bdab37c'
    # github.com/coteditor/CotEditor was verified as official when first introduced to the cask
    url "https://github.com/coteditor/CotEditor/releases/download/#{version}/CotEditor_#{version}.dmg"
  else
    version '3.1.7'
    sha256 'ae58c5f9c2300d5d171b95c0489cf5f663ce6247bdebabadf634f8ba70fe7132'
    # github.com/coteditor/CotEditor was verified as official when first introduced to the cask
    url "https://github.com/coteditor/CotEditor/releases/download/#{version}/CotEditor_#{version}.dmg"
  end

  appcast 'https://github.com/coteditor/CotEditor/releases.atom',
          checkpoint: '1e0bab5ad721c21c2ee218262d89a60feb529227cc9cb25ecac0febc890bc37d'
  name 'CotEditor'
  homepage 'https://coteditor.com/'

  app 'CotEditor.app'
  binary "#{appdir}/CotEditor.app/Contents/SharedSupport/bin/cot", target: 'cot'

  zap delete: [
                '~/Library/Application Scripts/com.coteditor.CotEditor',
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.coteditor.coteditor.sfl',
                '~/Library/Caches/com.apple.helpd/SDMHelpData/Other/English/HelpSDMIndexFile/com.coteditor.CotEditor.help',
                '~/Library/Caches/com.apple.helpd/SDMHelpData/Other/Japanese/HelpSDMIndexFile/com.coteditor.CotEditor.help',
                '~/Library/Containers/com.coteditor.CotEditor',
              ]
end
