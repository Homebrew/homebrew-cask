cask 'scummvm' do
  version '2.1.2'
  sha256 'f7e63342c70157337e489d7dba6eacad61842311b6406ca56f17ff1d059443bf'

  url "https://scummvm.org/frs/scummvm/#{version}/scummvm-#{version}-macosx.dmg"
  appcast 'https://www.scummvm.org/downloads/'
  name 'ScummVM'
  homepage 'https://www.scummvm.org/'

  app 'ScummVM.app'
end
