cask 'fake' do
  version '1.8.10'
  sha256 '3659dfd62a5d34f9c78b0ff08d33ee58ebcdc3d3fd4bc45739193524991d95ed'

  url "http://fakeapp.com/dist/Fake_#{version}.zip"
  appcast 'http://fakeapp.com/appcast/fake.rss',
          checkpoint: '6aefee27566eb1546276748794754b09080686032c16a326f0e729245ed79f0c'
  name 'Fake'
  homepage 'http://fakeapp.com/'
  license :commercial

  app 'Fake.app'
end
