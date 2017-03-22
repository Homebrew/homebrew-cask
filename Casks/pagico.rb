cask 'pagico' do
  version '7.4.2119'
  sha256 'a04ad5b11c5b7e4082a191939135f7886fab626886c272b64a5a625dc6e7d2ba'

  url "https://www.pagico.com/downloads/Pagico_Desktop_r#{version.patch}.dmg"
  name 'Pagico'
  homepage 'https://www.pagico.com/'

  depends_on macos: '>= :lion'

  pkg 'Install Pagico.pkg'

  uninstall pkgutil: 'com.pagico.*',
            delete:  '/Applications/Pagico'
end
