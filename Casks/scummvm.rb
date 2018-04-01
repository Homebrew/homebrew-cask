cask 'scummvm' do
  version '2.0.0'
  sha256 'ac85e37d8bb923bbd1cdd998dc3e6d4a6a0f7dac042a863502c002e997c51414'

  url "https://scummvm.org/frs/scummvm/#{version.major_minor_patch}/scummvm-#{version}-macosx.dmg"
  name 'ScummVM'
  homepage 'https://www.scummvm.org/'

  app 'ScummVM.app'
end
