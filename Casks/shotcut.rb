cask 'shotcut' do
  version '17.12.03'
  sha256 '0709d27608922b1f57d7c59abddcfd980500756e13b17297c830610ad291011a'

  # github.com/mltframework/shotcut was verified as official when first introduced to the cask
  url "https://github.com/mltframework/shotcut/releases/download/v#{version.major_minor}/shotcut-osx-x86_64-#{version.no_dots}.dmg"
  appcast 'https://github.com/mltframework/shotcut/releases.atom',
          checkpoint: '68f903e0b3577c2d4e814023a23c49d83f1739c21286c3a7bc6ab075312fd23f'
  name 'Shotcut'
  homepage 'https://www.shotcut.org/'

  app 'Shotcut.app'
end
