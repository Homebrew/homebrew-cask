cask 'scummvm' do
  version '1.9.0'
  sha256 '6081a71a3664c0571b6510d9bd7d4a6401a839b104f91c1a938369c04bd525b6'

  url "https://scummvm.org/frs/scummvm/#{version}/scummvm-#{version}-macosx.dmg"
  name 'ScummVM'
  homepage 'https://www.scummvm.org/'

  app 'ScummVM.app'
end
