cask 'hackhands' do
  version '2.0.0'
  sha256 '4c428f65ee63dac8ed6f122d4830cef5c76d6abb033d7344eef90ecebb7c7b74'

  # s.pluralsight.com/mentors/desktop was verified as official when first introduced to the cask
  url "https://s.pluralsight.com/mentors/desktop/HackHands-#{version}.dmg"
  name 'HackHands'
  homepage 'https://hackhands.com/desktop/'

  app 'HackHands.app'
end
