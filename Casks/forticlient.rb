cask 'forticlient' do
  version :latest
  sha256 :no_check

  # Downloads are hosted on a separate domain
  url 'http://forticlient.com/downloads/FortiClient_Installer.dmg'
  name 'Fortinet FortiClient'
  homepage 'http://forticlient.com/'
  license :unknown

  installer manual: 'FortiClientUpdate.app'
end
