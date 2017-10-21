cask 'strongvpn-client' do
  version :latest
  sha256 :no_check

  # mirror2.reliablehosting.com/mac was verified as official when first introduced to the cask
  url "https://mirror2.reliablehosting.com/mac/StrongVPN_Mac-latest.dmg"
  name 'StrongVPN'
  homepage 'https://strongvpn.com/setup.html/'

  app 'StrongVPN Client.app'
end
