cask 'pagico' do
  version '8.8.2184'
  sha256 '2564bd9dfa0ffcf26879f6589dff477c029880abefb675c22792a75f887e4ce3'

  url "https://www.pagico.com/downloads/Pagico_Desktop_r#{version.patch}.dmg"
  name 'Pagico'
  homepage 'https://www.pagico.com/'

  depends_on macos: '>= :lion'

  pkg 'Install Pagico.pkg'

  uninstall pkgutil: 'com.pagico.*'
end
