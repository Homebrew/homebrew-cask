cask 'scummvm' do
  version '2.0.0.1'
  sha256 'ed3e5a040702f78b0b395a801bea83ed2a70ea9fdb71b4bb985ec7084416bd26'

  url "https://scummvm.org/frs/scummvm/#{version.major_minor_patch}/scummvm-#{version}-macosx.dmg"
  name 'ScummVM'
  homepage 'https://www.scummvm.org/'

  app 'ScummVM.app'
end
