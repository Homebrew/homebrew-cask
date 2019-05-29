cask 'phon' do
  version '3.0.5'
  sha256 '8c1464be96df1423d8fd2f50da2249776c9cdb0ef5937755d8774b3480e8533d'

  # github.com/phon-ca/phon was verified as official when first introduced to the cask
  url "https://github.com/phon-ca/phon/releases/download/#{version}/Phon_macos_#{version.dots_to_underscores}.dmg"
  appcast 'https://github.com/phon-ca/phon/releases.atom'
  name 'Phon'
  homepage 'https://www.phon.ca/'

  app 'Phon.app'
end
