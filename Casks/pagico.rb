cask 'pagico' do
  version '7.4.1868'
  sha256 'f98b5b2278ae01229c52517de23413df8bc7a5638615ac75a1fed36c9cd1d704'

  url "https://www.pagico.com/downloads/Pagico_Desktop_r#{version.patch}.dmg"
  name 'Pagico'
  homepage 'https://www.pagico.com/'
  license :commercial

  depends_on macos: '>= :lion'

  pkg 'Install Pagico.pkg'

  uninstall pkgutil: 'com.pagico.*',
            delete:  '/Applications/Pagico'
end
