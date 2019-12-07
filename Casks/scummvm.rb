cask 'scummvm' do
  version '2.5.1'
  sha256 '628add60fdedf2cb5c255b601109f9487e1a789e37145064fc4523ab2bacd52b'

  url "https://scummvm.org/frs/scummvm/#{version.major_minor_patch}/scummvm-#{version}-macosx.dmg"
  appcast 'https://www.scummvm.org/appcasts/macosx/release.xml'
  name 'ScummVM'
  homepage 'https://www.scummvm.org/'

  app 'ScummVM.app'
end
