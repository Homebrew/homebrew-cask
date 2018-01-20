cask 'mweb' do
  version '2.2.8'
  sha256 '149c7abb50fec0a9fa37f0b891a5a563290db18fcbc0780f095d7673efa05c76'

  # dl.devmate.com/com.coderforart.MWeb was verified as official when first introduced to the cask
  url 'https://dl.devmate.com/com.coderforart.MWeb/MWeb-ProMarkdownwriting%2CnotetakingandstaticbloggeneratorApp.dmg'
  appcast 'https://updates.devmate.com/com.coderforart.MWeb.xml',
          checkpoint: '651cc6d0abc923b562c36216f550a70d6ef0149ed1f091d6e53267322c497801'
  name 'MWeb'
  homepage 'http://www.mweb.im/'

  app 'MWeb.app'
end
