cask 'phon' do
  version '2.1.8'
  sha256 'c25792d6556046084cee75ff172f4daff181a53ae489892a7b89dd0514fc6435'

  # github.com/phon-ca/phon was verified as official when first introduced to the cask
  url "https://github.com/phon-ca/phon/releases/download/#{version}/Phon_macos_#{version.dots_to_underscores}.dmg"
  appcast 'https://github.com/phon-ca/phon/releases.atom'
  name 'Phon'
  homepage 'https://www.phon.ca/'

  app "Phon #{version.major_minor}.app"
end
