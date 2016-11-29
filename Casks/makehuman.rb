cask 'makehuman' do
  version '1.1.0'
  sha256 'a16f3aa66b553a60c57e3e973dba5be559493a111251db057c38cf300a3d762b'

  # tuxfamily.org/makehuman was verified as official when first introduced to the cask
  url "https://download.tuxfamily.org/makehuman/releases/#{version}/makehuman-#{version}-osx.dmg"
  name 'MakeHuman'
  homepage 'http://www.makehuman.org/'

  app 'MakeHuman.app'
end
