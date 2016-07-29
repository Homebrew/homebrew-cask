cask 'scummvm' do
  version '1.8.0'
  sha256 '6fb52db22b778027d0cb55be9dc8bd6f655f89314dba3e8d36aa4da12303cb7b'

  url "http://scummvm.org/frs/scummvm/#{version}/scummvm-#{version}-macosx.dmg"
  name 'ScummVM'
  homepage 'http://scummvm.org/'
  license :gpl

  app 'ScummVM.app'
end
