cask :v1 => 'fake' do
  version '1.8.10'
  sha256 '3659dfd62a5d34f9c78b0ff08d33ee58ebcdc3d3fd4bc45739193524991d95ed'

  url "http://fakeapp.com/dist/Fake_#{version}.zip"
  appcast 'http://fakeapp.com/appcast/fake.rss',
          :sha256 => '286ba147f304651cfbb44b03a1b5fd6b5f131cde3b04530a42cd4c5504e54b8a'
  name 'Fake'
  homepage 'http://fakeapp.com/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Fake.app'
end
