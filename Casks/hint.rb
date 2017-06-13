cask 'hint' do
  version '0.4.1-alpha'
  sha256 '88fae651c2459f90396b14c15a0291495321705b473caf0457ede20e1f5f770f'

  url "https://github.com/crsmithdev/hint/releases/download/v#{version}/Hint.zip"
  appcast 'https://github.com/crsmithdev/hint/releases.atom',
          checkpoint: '949a18c8a12658465301e5b1c021a8c8cf53f794198e4c3d9a65383a1901e3a9'
  name 'Hint'
  homepage 'https://github.com/crsmithdev/hint'

  app 'Hint/Hint.app'

  zap delete: [
                '~/Library/Containers/com.crsmithdev.Hint',
                '~/Library/Application Scripts/com.crsmithdev.Hint',
              ]
end
