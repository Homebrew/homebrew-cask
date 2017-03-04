cask 'ampps' do
  version '3.6'
  sha256 'e266be32a1b6206c95fd75c405451a53aee4319c1f62641cdb58e2f2dc809e94'

  url "http://files.ampps.com/AMPPS-#{version}.dmg"
  name 'AMPPS'
  homepage 'http://www.ampps.com/'

  suite 'AMPPS'

  uninstall_preflight do
    set_permissions "#{appdir}/AMPPS", '0777'
  end
end
