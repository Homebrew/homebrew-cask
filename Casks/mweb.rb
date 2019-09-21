cask 'mweb' do
  version '3.2.8'
  sha256 'f0c114542a8a807e2fa971d498ac7a02986b7293dcb101021cdd1d519c6b44cd'

  # dl.devmate.com/com.coderforart.MWeb3 was verified as official when first introduced to the cask
  url 'https://dl.devmate.com/com.coderforart.MWeb3/MWeb3-ProMarkdownwriting,notetakingandstaticbloggeneratorApp.dmg'
  appcast 'https://updates.devmate.com/com.coderforart.MWeb3.xml'
  name 'MWeb'
  homepage 'https://www.mweb.im/'

  app 'MWeb.app'
end
