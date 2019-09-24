cask 'mweb' do
  version '3.3.1'
  sha256 '896ea61a7d8c3086e62cc0d02c573ee44e5696943c1f3e179d4940481d380e08'

  # dl.devmate.com/com.coderforart.MWeb3 was verified as official when first introduced to the cask
  url 'https://dl.devmate.com/com.coderforart.MWeb3/MWeb3-ProMarkdownwriting,notetakingandstaticbloggeneratorApp.dmg'
  appcast 'https://updates.devmate.com/com.coderforart.MWeb3.xml'
  name 'MWeb'
  homepage 'https://www.mweb.im/'

  app 'MWeb.app'
end
