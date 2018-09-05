cask 'ampps' do
  version '3.8'
  sha256 '56ec575ce053d9c99decb143832d2e5a8a1cfa26230503930dac61b5213c86de'

  url "http://files.ampps.com/AMPPS-#{version}.dmg"
  name 'AMPPS'
  homepage 'https://www.ampps.com/'

  suite 'AMPPS'

  uninstall_preflight do
    set_permissions "#{appdir}/AMPPS", '0777'
  end
end
