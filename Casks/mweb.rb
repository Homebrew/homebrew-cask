cask 'mweb' do
  version '3.1.8'
  sha256 '49f69acb1f3cbc349f56044edc53065a85f2b50257a4c11c95444603c8fb87e4'

  # dl.devmate.com/com.coderforart.MWeb3 was verified as official when first introduced to the cask
  url 'https://dl.devmate.com/com.coderforart.MWeb3/MWeb3-ProMarkdownwriting%2CnotetakingandstaticbloggeneratorApp.dmg'
  appcast 'https://updates.devmate.com/com.coderforart.MWeb3.xml'
  name 'MWeb'
  homepage 'https://www.mweb.im/'

  app 'MWeb.app'
end
