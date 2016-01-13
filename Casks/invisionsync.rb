cask 'invisionsync' do
  version '1.7.20-673'
  sha256 '219d670309a6f21c91b634f9189f0226d8d1fe1c0ccfc472ef90d6839f8ff734'

  url "https://projects.invisionapp.com/native_app/mac/sparkle/#{version.sub(%r{^.*?-}, '')}.zip"
  appcast 'https://projects.invisionapp.com/native_app/mac/sparkle/appcast_v2.xml',
          :sha256 => '7cfefed21a18a26a9fecfd92e8ed0795b22f7da21ca486dc1b6c0ef239108516'
  name 'InVision Sync'
  homepage 'http://invisionapp.com/'
  license :gratis

  app 'InVisionSync.app'
end
