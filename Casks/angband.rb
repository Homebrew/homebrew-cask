cask 'angband' do
  version '4.2.0'
  sha256 '6de909d72d71cb8423a59f33169e05d5d0fa3f7957a01c4d4abc19917ea0519a'

  url "https://rephial.org/downloads/#{version.major_minor}/Angband-#{version}-osx.dmg"
  appcast 'https://rephial.org/release/'
  name 'Angband'
  homepage 'https://rephial.org/'

  depends_on macos: '>= :sierra'

  app 'Angband.app'
end
