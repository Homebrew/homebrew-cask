cask 'mweb' do
  version '3.2.0'
  sha256 'c0966a0796fc3a370c652182436673e037195ef63bdb4b9af9bec6cd76429866'

  # dl.devmate.com/com.coderforart.MWeb3 was verified as official when first introduced to the cask
  url 'https://dl.devmate.com/com.coderforart.MWeb3/MWeb3-ProMarkdownwriting,notetakingandstaticbloggeneratorApp.dmg'
  appcast 'https://updates.devmate.com/com.coderforart.MWeb3.xml'
  name 'MWeb'
  homepage 'https://www.mweb.im/'

  app 'MWeb.app'
end
