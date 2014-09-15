class Fake < Cask
  version '1.8.9.1'
  sha256 'a350b00e17e690077feb05c3b26a6ca173a21bfbe39d51d8db1cd5689a4574c5'

  url 'http://fakeapp.com/dist/Fake_1.8.9.1.zip'
  appcast 'http://fakeapp.com/appcast/fake.rss'
  homepage 'http://fakeapp.com/'

  app 'Fake.app'
end
