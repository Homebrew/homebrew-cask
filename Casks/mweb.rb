cask 'mweb' do
  version '3.3.9'
  sha256 '8157ce38657a9642ef2e4f5b195b81ef878cd2161fd7bb47aef2cda73cb68490'

  # dl.devmate.com/com.coderforart.MWeb3/ was verified as official when first introduced to the cask
  url 'https://dl.devmate.com/com.coderforart.MWeb3/MWeb3-ProMarkdownwriting,notetakingandstaticbloggeneratorApp.dmg'
  appcast 'https://updates.devmate.com/com.coderforart.MWeb3.xml'
  name 'MWeb'
  homepage 'https://www.mweb.im/'

  depends_on macos: '>= :sierra'

  app 'MWeb.app'
end
