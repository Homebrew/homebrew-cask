cask 'psychopy' do
  version '1.90.2'
  sha256 'ec17d6b554f6239a3c1dbcf45f31c5ae10d0d57b5b42025a9f0ccaa4d55c93a6'

  url "https://github.com/psychopy/psychopy/releases/download/#{version}/StandalonePsychoPy2_PY3-#{version}-MacOS.dmg"
  appcast 'https://github.com/psychopy/psychopy/releases.atom',
          checkpoint: '085615988f7807a6bbcb9b3a15541219ab1d287f3ac366bf8c54481dca8fa211'
  name 'PsychoPy'
  homepage 'https://github.com/psychopy/psychopy'

  app 'PsychoPy2_PY3.app'
end
