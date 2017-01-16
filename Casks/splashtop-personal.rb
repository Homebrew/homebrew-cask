cask 'splashtop-personal' do
  version '2.6.8.0'
  sha256 '8c867a3969399db29b4f7aa6abb2f70f06535503f35db7eb5ff58358f3cb91dd'

  # d17kmd0va0f0mp.cloudfront.net was verified as official when first introduced to the cask
  url "https://d17kmd0va0f0mp.cloudfront.net/macclient/STP/Splashtop_Personal_v#{version}.dmg"
  appcast 'http://www.splashtop.com/wp-content/themes/responsive/downloadx.php?product=stp&platform=mac-client',
          checkpoint: '5c62995b415044d924c96f2fbf50b11ee0884af98355d7d8e9f17c6ba1e878fd'
  name 'Splashtop Personal'
  homepage 'https://www.splashtop.com/personal'

  pkg 'Splashtop Personal.pkg'

  uninstall pkgutil: 'com.splashtop.stp.*'
end
