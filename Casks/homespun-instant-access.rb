cask 'homespun-instant-access' do
  version :latest
  sha256 :no_check

  # vault.platformpurple.com/static/installers/homespun_installer was verified as official when first introduced to the cask
  url 'http://vault.platformpurple.com/static/installers/homespun_installer.zip'
  name 'Homespun Instant Access'
  homepage 'https://www.homespun.com/direct-download/'

  installer manual: 'Homespun Instant Access Installer.app'

  uninstall quit:   'com..mm_launcher',
            delete: '/Applications/Homespun Instant Access.app'
end
