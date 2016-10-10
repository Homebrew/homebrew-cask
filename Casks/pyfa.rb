cask 'pyfa' do
  version '1.23.1,yc.118.7-1.4'
  sha256 '4e0b4641a0824e99729278b9f077376a17628f685125bef5007587066e580c3f'

  url "https://github.com/pyfa-org/Pyfa/releases/download/v#{version.before_comma}/pyfa-#{version.before_comma}-#{version.after_comma}-mac.zip"
  appcast 'https://github.com/pyfa-org/Pyfa/releases.atom',
          checkpoint: 'eea8bb24a425814f3a83bd27bf8a690c77ac4bf058ebeb9765ac1b4415abe13d'
  name 'pyfa'
  homepage 'https://github.com/pyfa-org/Pyfa'

  app 'pyfa.app'
end
