cask 'mweb' do
  version '3.3.3'
  sha256 '3d675549f118ea10c6ba1c9959beab66bc495420a4e818b46ee1106dc4e3c11c'

  # dl.devmate.com/com.coderforart.MWeb3 was verified as official when first introduced to the cask
  url 'https://dl.devmate.com/com.coderforart.MWeb3/MWeb3-ProMarkdownwriting,notetakingandstaticbloggeneratorApp.dmg'
  appcast 'https://updates.devmate.com/com.coderforart.MWeb3.xml'
  name 'MWeb'
  homepage 'https://www.mweb.im/'

  depends_on macos: '>= :sierra'

  app 'MWeb.app'
end
