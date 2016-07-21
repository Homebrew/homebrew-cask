cask 'cookie' do
  version '5.0.11'
  sha256 '9688c455f7a8f1b5373619136bb31d9cc40de335a630e80b8a914e7f53715eb5'

  url 'https://sweetpproductions.com/products/cookie5/Cookie5.zip'
  appcast 'https://sweetpproductions.com/products/cookie5/appcast.xml',
          checkpoint: 'dff4962f6d60dfb9c0ab54bdc1a7ee4baddd4f622c5ac091b17173367bc5dc0f'
  name 'Cookie'
  homepage 'https://sweetpproductions.com/'
  license :commercial

  app 'Cookie.app'
end
