cask 'scummvm' do
  version '2.1.0'
  sha256 'c82f8a1c20a555c2dc4fee6854afffe33815a7d1bee58fe13052ff52b41a98f8'

  url "https://scummvm.org/frs/scummvm/#{version.major_minor_patch}/scummvm-#{version}-macosx.dmg"
  appcast 'https://www.scummvm.org/appcasts/macosx/release.xml'
  name 'ScummVM'
  homepage 'https://www.scummvm.org/'

  app 'ScummVM.app'
end
