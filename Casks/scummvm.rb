cask 'scummvm' do
  version '1.8.1'
  sha256 'de493a74e0458401e35cce978d2b5ea5f443b3744931011bd67649be52c6ecf2'

  url "https://scummvm.org/frs/scummvm/#{version}/scummvm-#{version}-macosx.dmg"
  name 'ScummVM'
  homepage 'https://scummvm.org/'

  app 'ScummVM.app'
end
