cask 'mweb' do
  version '2.3.0'
  sha256 'f1985e2c3e2e44e9243ac390663996c1ad2480166c52ca2bbcbe4a4623580fec'

  # dl.devmate.com/com.coderforart.MWeb was verified as official when first introduced to the cask
  url 'https://dl.devmate.com/com.coderforart.MWeb/MWeb-ProMarkdownwriting%2CnotetakingandstaticbloggeneratorApp.dmg'
  appcast 'https://updates.devmate.com/com.coderforart.MWeb.xml'
  name 'MWeb'
  homepage 'http://www.mweb.im/'

  app 'MWeb.app'
end
