cask 'fake' do
  version '1.9.1'
  sha256 'eb4f02a3b5dea2cab679c1366f454a22d8bb4bbfa448c56c0ca00bb615d8867e'

  url "http://fakeapp.com/dist/Fake_#{version}.zip"
  appcast 'http://fakeapp.com/appcast/fake.rss',
          checkpoint: '85381df60d3c1ae81ca90c6c1344b23c5f9986c78757c911934a764d71f7faf1'
  name 'Fake'
  homepage 'http://fakeapp.com/'

  app 'Fake.app'
end
