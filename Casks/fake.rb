cask 'fake' do
  version '1.9'
  sha256 '3ecba6de4eb729e77b452501efb087bc33bd248dd89407b4d69c9b219e2b4b54'

  url "http://fakeapp.com/dist/Fake_#{version}.zip"
  appcast 'http://fakeapp.com/appcast/fake.rss',
          checkpoint: 'fcd79673ec64706f2ba888d965fb89c6120641d3687e09cc5484ca5964374c25'
  name 'Fake'
  homepage 'http://fakeapp.com/'

  app 'Fake.app'
end
