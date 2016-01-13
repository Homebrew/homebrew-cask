cask 'fake' do
  version '1.8.10'
  sha256 '3659dfd62a5d34f9c78b0ff08d33ee58ebcdc3d3fd4bc45739193524991d95ed'

  url "http://fakeapp.com/dist/Fake_#{version}.zip"
  appcast 'http://fakeapp.com/appcast/fake.rss',
          :sha256 => '6069254b0fcb6358f2eebfafa1074856ab0f392a387611cc2434b873f9c2166a'
  name 'Fake'
  homepage 'http://fakeapp.com/'
  license :commercial

  app 'Fake.app'
end
