cask 'mweb' do
  version '3.3.4'
  sha256 '1ffe9c2df906276d4a76894e86133abf9546ed6b8a2bb8e1be34b0b0fdb33aef'

  # dl.devmate.com/com.coderforart.MWeb3 was verified as official when first introduced to the cask
  url 'https://dl.devmate.com/com.coderforart.MWeb3/MWeb3-ProMarkdownwriting,notetakingandstaticbloggeneratorApp.dmg'
  appcast 'https://updates.devmate.com/com.coderforart.MWeb3.xml'
  name 'MWeb'
  homepage 'https://www.mweb.im/'

  depends_on macos: '>= :sierra'

  app 'MWeb.app'
end
