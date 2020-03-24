cask 'mweb' do
  version '3.3.7'
  sha256 '35f5dbb6eb823979c2e66f9ad02e5660381606c808ae80025e440dded88dd9d4'

  # dl.devmate.com/com.coderforart.MWeb3 was verified as official when first introduced to the cask
  url 'https://dl.devmate.com/com.coderforart.MWeb3/MWeb3-ProMarkdownwriting,notetakingandstaticbloggeneratorApp.dmg'
  appcast 'https://updates.devmate.com/com.coderforart.MWeb3.xml'
  name 'MWeb'
  homepage 'https://www.mweb.im/'

  depends_on macos: '>= :sierra'

  app 'MWeb.app'
end
