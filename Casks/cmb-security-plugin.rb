cask :v1 => 'cmb-security-plugin' do
  version :latest
  sha256 :no_check

  url 'https://site.cmbchina.com/download/CMBSecurityPlugin.dmg'
  homepage 'https://www.cmbchina.com/'
  license :closed

  pkg 'CMB Security Plugin.pkg'
  uninstall :pkgutil => 'com.cmbchina.CMBSecurityPlugin.pkg'
end
