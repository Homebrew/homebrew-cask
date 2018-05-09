cask 'metabase-app' do
  version '0.29.0.0'
  sha256 'cfe3c5838fe53f6c374a0aa15669e834306377f8ea57a3c9f0e19ad1090def5b'

  # s3.amazonaws.com/downloads.metabase.com was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/downloads.metabase.com/v#{version.major_minor_patch}/Metabase.zip"
  appcast 'https://s3.amazonaws.com/downloads.metabase.com/appcast.xml',
          checkpoint: '57c2bfa9f93d10bcc443ed3b7a100271ad3780431871b79b7e5b6d98c2129fbe'
  name 'Metabase'
  homepage 'https://www.metabase.com/'

  app 'Metabase.app'
end
