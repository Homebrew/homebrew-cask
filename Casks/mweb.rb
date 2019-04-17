cask 'mweb' do
  version '3.2.2'
  sha256 '4299deb7296d410b9af5449b7f95c92b83a2d43da7d6f32183191dcdb7a95f1e'

  # dl.devmate.com/com.coderforart.MWeb3 was verified as official when first introduced to the cask
  url 'https://dl.devmate.com/com.coderforart.MWeb3/MWeb3-ProMarkdownwriting,notetakingandstaticbloggeneratorApp.dmg'
  appcast 'https://updates.devmate.com/com.coderforart.MWeb3.xml'
  name 'MWeb'
  homepage 'https://www.mweb.im/'

  app 'MWeb.app'
end
