cask 'oscar' do
  version '1.0.1'
  sha256 'ca1f454cac6c41798604893cb86cede560bce146c1a5900e31aadad3d547af94'

  # apneaboard.com/OSCAR was verified as official when first introduced to the cask
  url "https://www.apneaboard.com/OSCAR/OSCAR-v#{version}-macOS.dmg"
  appcast 'https://www.sleepfiles.com/OSCAR/'
  name 'OSCAR'
  homepage 'https://www.sleepfiles.com/OSCAR/'

  app 'OSCAR.app'
end
