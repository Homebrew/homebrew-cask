cask 'ionic-profiles' do
  version '2.2.0-307'
  sha256 'b7e38ba243e6330c1e833d953f4f2c88579fd8136f75b6d688aff29640fb8dfc'

  # github.com/IonicDev/ionic-profiles/releases/download/2.2.0-307/ionic-profiles_macOS.zip was verified as official when first introduced to the cask
  url 'https://github.com/IonicDev/ionic-profiles/releases/download/2.2.0-307/ionic-profiles_macOS.zip'
  appcast 'https://github.com/IonicDev/ionic-profiles/releases.atom'
  name 'ionic-profiles'
  homepage 'https://dev.ionic.com/tools/ionic-profiles'

  binary 'ionic-profiles'
end
