cask 'scummvm' do
  version '2.5.1'
  sha256 'f73856ed6925c8d8be2e9cb05875a0b273c8caa7f529b7202cce1573db5a0e03'

  url "https://scummvm.org/frs/scummvm/#{version.major_minor_patch}/scummvm-#{version}-macosx.dmg"
  appcast 'https://www.scummvm.org/appcasts/macosx/release.xml'
  name 'ScummVM'
  homepage 'https://www.scummvm.org/'

  app 'ScummVM.app'
end
