cask 'phon' do
  version '3.0.4'
  sha256 '772924a473f26585ff39fac21f25cbf99c5fa117950be54d55796102d9fff4ba'

  # github.com/phon-ca/phon was verified as official when first introduced to the cask
  url "https://github.com/phon-ca/phon/releases/download/#{version}/Phon_macos_#{version.dots_to_underscores}.dmg"
  appcast 'https://github.com/phon-ca/phon/releases.atom'
  name 'Phon'
  homepage 'https://www.phon.ca/'

  app 'Phon.app'
end
