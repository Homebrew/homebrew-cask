cask 'strongvpn-client' do
  version '1.2.0,b200'
  sha256 '4b50f4f330394f141ffe9417eccdb86eaef9a595c2e5da238d7fee17b818fdb2'

  # mirror2.reliablehosting.com/mac was verified as official when first introduced to the cask
  url "https://mirror2.reliablehosting.com/mac/StrongVPN_Mac_#{version.before_comma}.zip"
  appcast 'https://colomovers.com/mac.xml',
          checkpoint: '734a1bf789034d192b42a82bb470a4eebb9d1800bb646fa9178583fb632b269b'
  name 'StrongVPN'
  homepage 'https://strongvpn.com/setup.html/'

  app "StrongVPN Client_#{version.before_comma}_#{version.after_comma}/StrongVPN Client.app"
end
