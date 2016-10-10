cask 'invisionsync' do
  version '1.7.24-678'
  sha256 '8a7eedfb87f0e8d5c092d054e4bb0fee17c0dee3cde74d2a96628b99687569c2'

  url "https://projects.invisionapp.com/native_app/mac/sparkle/#{version.sub(%r{^.*?-}, '')}.zip"
  appcast 'https://projects.invisionapp.com/native_app/mac/sparkle/appcast_v2.xml',
          checkpoint: '6131c1e35f72ea3e993b5054ffec8298ee85ddf8bdb3ca105a590eb45583e0e8'
  name 'InVision Sync'
  homepage 'https://invisionapp.com/'

  app 'InVisionSync.app'
end
