cask :v1 => 'fake' do
  version '1.8.10'
  sha256 '3659dfd62a5d34f9c78b0ff08d33ee58ebcdc3d3fd4bc45739193524991d95ed'

  url "http://fakeapp.com/dist/Fake_#{version}.zip"
  appcast 'http://fakeapp.com/appcast/fake.rss',
          :sha256 => 'abbff6f5ff883635842365fc7c81cab029438aaa501655702dd9d8d74b8e8fea'
  name 'Fake'
  homepage 'http://fakeapp.com/'
  license :commercial

  app 'Fake.app'
end
