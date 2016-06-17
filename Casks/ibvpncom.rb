cask 'ibvpncom' do
  version :latest
  sha256 :no_check

  # ibvp.net was verified as official when first introduced to the cask
  url 'http://download.ibvp.net/MAC_AIO.dmg'
  name 'ibVPN'
  homepage 'https://www.ibvpn.com/'
  license :unknown

  app 'ibvpn.com.app'

  uninstall_preflight do
    set_permissions "#{appdir}/ibvpn.com.app", '0777'
  end
end
