cask 'bandage' do
  version '0.8.0'
  sha256 '154863b16bc9ecdf7b53aa9ecc22e7b34b980959ceb1105b3aefbd229b29ee0b'

  # github.com/rrwick/Bandage was verified as official when first introduced to the cask
  url "https://github.com/rrwick/Bandage/releases/download/v#{version}/Bandage_Mac_v#{version.gsub('.', '_')}.zip"
  appcast 'https://github.com/rrwick/Bandage/releases.atom',
          checkpoint: '1a11b4ec58def73a31ca2f89638eecdc2eaf4e46d0f30416ab87a669138f5962'
  name 'Bandage'
  homepage 'https://rrwick.github.io/Bandage/'
  license :gpl

  app 'Bandage.app'
end
