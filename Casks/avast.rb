cask :v1 => 'avast' do
  version :latest
  sha256 :no_check

  url 'http://download.ff.avast.com/mac/avast_free_antivirus_mac_setup.dmg'
  homepage 'http://www.avast.com/'
  license :commercial

  pkg 'Avast Mac Security.pkg'

  uninstall :script => '/Library/Application Support/Avast/hub/uninstall.sh'
end
