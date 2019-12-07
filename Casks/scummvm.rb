cask 'scummvm' do
  version '2.5.1'
  sha256 '270d7ce916bfb375b208cfac6ee77604a8fc2a39d1ad2d068e7c7973f43e2839'

  url "https://scummvm.org/frs/scummvm/#{version.major_minor_patch}/scummvm-#{version}-macosx.dmg"
  appcast 'https://www.scummvm.org/appcasts/macosx/release.xml'
  name 'ScummVM'
  homepage 'https://www.scummvm.org/'

  app 'ScummVM.app'
end
