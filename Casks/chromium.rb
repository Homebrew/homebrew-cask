class Chromium < Cask
  version '35.0.1916.153'
  sha256 '9445b16e9814575d1194d60197aad2c20e89110fd2aaf1e8120a41637768ff92'

  url 'https://downloads.sourceforge.net/sourceforge/osxportableapps/ChromiumOSX_35.0.1916.153.dmg'
  appcast 'http://osxportableapps.sourceforge.net/chromium/chrcast.xml'
  homepage 'http://www.freesmug.org/chromium'

  link 'Chromium.app'
end
