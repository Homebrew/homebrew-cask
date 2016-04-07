cask 'plug' do
  if MacOS.release <= :lion
    version '?'
    sha256 '?'
  else
    version '2.0.9'
    sha256 'bead86a9880ae8eb63296b48d6aef30d80d6057a11ca8491dc85a27b296f5e36'
    appcast 'https://www.plugformac.com/updates/plug2/sparklecast.xml',
	  checkpoint: '7092bd0eb0a14a478018d36a44addfa4a8dfc871e214f79d66b6a5e1ce216815'
  end

  url 'https://www.plugformac.com/updates/plug2/Plug-latest.dmg'
  name 'Plug'
  homepage 'https://www.plugformac.com/'
  license :gratis

  app 'Plug.app'
end
