cask :v1 => 'fake' do
  version '1.8.9.1'
  sha256 'a350b00e17e690077feb05c3b26a6ca173a21bfbe39d51d8db1cd5689a4574c5'

  url "http://fakeapp.com/dist/Fake_#{version}.zip"
  appcast 'http://fakeapp.com/appcast/fake.rss',
          :sha256 => '286ba147f304651cfbb44b03a1b5fd6b5f131cde3b04530a42cd4c5504e54b8a'
  homepage 'http://fakeapp.com/'
  license :unknown    # todo: improve this machine-generated value

  app 'Fake.app'
end
