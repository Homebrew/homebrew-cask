cask 'cookie' do
  version '5.0.10'
  sha256 '9f50869effeeb23b99cff8e187f138ab4d1c0d29b0672833316c53a775ccf734'

  url 'https://sweetpproductions.com/products/cookie5/Cookie5.zip'
  appcast 'https://sweetpproductions.com/products/cookie5/appcast.xml',
          checkpoint: 'faaa97a800da4e62f559fdbdeb9851f2dc985e3453ed5fbee27b2c3c0cd7c845'
  name 'Cookie'
  homepage 'https://sweetpproductions.com/'
  license :commercial

  app 'Cookie.app'
end
