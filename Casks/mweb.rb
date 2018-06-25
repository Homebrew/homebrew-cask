cask 'mweb' do
  version '2.2.9'
  sha256 'ea8f2c6dc6f2c2873c7b60c71c351f0e08b93c4a0be2836d3d0f33d98ee7c3b6'

  # dl.devmate.com/com.coderforart.MWeb was verified as official when first introduced to the cask
  url 'https://dl.devmate.com/com.coderforart.MWeb/MWeb-ProMarkdownwriting%2CnotetakingandstaticbloggeneratorApp.dmg'
  appcast 'https://updates.devmate.com/com.coderforart.MWeb.xml'
  name 'MWeb'
  homepage 'http://www.mweb.im/'

  app 'MWeb.app'
end
