cask 'phon' do
  version '2.1.8'
  sha256 'c25792d6556046084cee75ff172f4daff181a53ae489892a7b89dd0514fc6435'

  # github.com/phon-ca/phon was verified as official when first introduced to the cask
  url "https://github.com/phon-ca/phon/releases/download/#{version}/Phon_macos_#{version.dots_to_underscores}.dmg"
  appcast 'https://github.com/phon-ca/phon/releases.atom',
          checkpoint: 'cd19a53a64d7b5ed43ef5af98b7e13084fe8fe9376132be5fd74fa49c48939d0'
  name 'Phon'
  homepage 'https://www.phon.ca/phontrac'

  app "Phon #{version.major_minor}.app"
end
