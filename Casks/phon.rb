cask 'phon' do
  version '3.0.3'
  sha256 '2adfe8d47e5a961af20a86e7df97a7af1b5922168b03573d918f66b5b7d44f70'

  # github.com/phon-ca/phon was verified as official when first introduced to the cask
  url "https://github.com/phon-ca/phon/releases/download/#{version}/Phon_macos_#{version.dots_to_underscores}.dmg"
  appcast 'https://github.com/phon-ca/phon/releases.atom'
  name 'Phon'
  homepage 'https://www.phon.ca/'

  app 'Phon.app'
end
