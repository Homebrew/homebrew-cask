cask 'hackhands' do
  version '2.0.2'
  sha256 'f5eb24548d5897c17a75da12c527f122189667578775864009741074aeb53d1c'

  # s.pluralsight.com/mentors/desktop was verified as official when first introduced to the cask
  url "https://s.pluralsight.com/mentors/desktop/HackHands-#{version}.dmg"
  name 'HackHands'
  homepage 'https://hackhands.com/desktop/'

  app 'HackHands.app'
end
