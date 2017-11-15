cask 'foobarplus' do
  version '1.5'
  sha256 '26de719bc39b142db41463ba67f430b5791928f85c0fc17469b1d5a39c1579af'

  # amazonaws.com/foobarapp was verified as official when first introduced to the cask
  url 'https://s3.amazonaws.com/foobarapp/FoobarPlus+1.5+(6).zip'
  name 'FoobarPlus'
  homepage 'https://www.foobaz.io/plus/'

  app 'FoobarPlus.app'

  zap delete: '~/Library/Caches/com.weirdrocketeer.FoobarPlus',
      trash:  '~/Library/Preferences/com.weirdrocketeer.FoobarPlus.plist'
end
