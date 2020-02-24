cask 'scummvm' do
  version '2.1.1'
  sha256 '2c50f2e57704fe228cb53365e73e56e37d39fed019b62c7330e6f41e1df595dd'

  url "https://scummvm.org/frs/scummvm/#{version}/scummvm-#{version}-macosx.dmg"
  appcast 'https://www.scummvm.org/downloads/'
  name 'ScummVM'
  homepage 'https://www.scummvm.org/'

  app 'ScummVM.app'
end
