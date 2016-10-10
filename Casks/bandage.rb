cask 'bandage' do
  version '0.8.0'
  sha256 '154863b16bc9ecdf7b53aa9ecc22e7b34b980959ceb1105b3aefbd229b29ee0b'

  # github.com/rrwick/Bandage was verified as official when first introduced to the cask
  url "https://github.com/rrwick/Bandage/releases/download/v#{version}/Bandage_Mac_v#{version.dots_to_underscores}.zip"
  appcast 'https://github.com/rrwick/Bandage/releases.atom',
          checkpoint: 'd70dfd9fbcd8219576c2ef2b68c53b85ef95c0fb3db13a5134cc50403d97776f'
  name 'Bandage'
  homepage 'https://rrwick.github.io/Bandage/'

  app 'Bandage.app'
end
