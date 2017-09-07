cask 'scummvm' do
  version '1.9.0.2'
  sha256 'd29dd0ba833377cd488be259215c9aced298b4468309a22870e4b466a1f83ad8'

  url "https://scummvm.org/frs/scummvm/#{version.major_minor_patch}/scummvm-#{version}-macosx.dmg"
  name 'ScummVM'
  homepage 'https://www.scummvm.org/'

  app 'ScummVM.app'
end
