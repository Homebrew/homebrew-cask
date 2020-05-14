cask 'mweb' do
  version '3.3.8'
  sha256 '921cc4a2795fedde987d14c1faa9130df6b44ecc8b6ca0bf30bd03f96733dcdd'

  # dl.devmate.com/com.coderforart.MWeb3/ was verified as official when first introduced to the cask
  url 'https://dl.devmate.com/com.coderforart.MWeb3/MWeb3-ProMarkdownwriting,notetakingandstaticbloggeneratorApp.dmg'
  appcast 'https://updates.devmate.com/com.coderforart.MWeb3.xml'
  name 'MWeb'
  homepage 'https://www.mweb.im/'

  depends_on macos: '>= :sierra'

  app 'MWeb.app'
end
