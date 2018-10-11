cask 'phon' do
  version '3.0.1'
  sha256 '32ddc2bbb895add89c61501cd0efe3922414d020358145f48eba20f12b2532d3'

  # github.com/phon-ca/phon was verified as official when first introduced to the cask
  url "https://github.com/phon-ca/phon/releases/download/#{version}/Phon_macos_#{version.dots_to_underscores}.dmg"
  appcast 'https://github.com/phon-ca/phon/releases.atom'
  name 'Phon'
  homepage 'https://www.phon.ca/'

  app 'Phon.app'
end
