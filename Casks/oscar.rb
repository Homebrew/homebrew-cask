cask 'oscar' do
  version '1.1.0'
  sha256 '1aa66aba091dd92760ef0e747514fdd35099d71e38e322da132122ebfeb9aa6e'

  # apneaboard.com/OSCAR/ was verified as official when first introduced to the cask
  url "https://www.apneaboard.com/OSCAR/OSCAR-#{version}.dmg"
  appcast 'https://www.sleepfiles.com/OSCAR/'
  name 'OSCAR'
  homepage 'https://www.sleepfiles.com/OSCAR/'

  app 'OSCAR.app'
end
