cask :v1 => 'obs' do
  version '0.9.1'
  sha256 '24505cc6a7074a93b5b150a61fb3f107e50526e57b7f78e14adf3af7544a630e'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/jp9000/obs-studio/releases/download/#{version}/obs-#{version}-installer.dmg"
  appcast 'https://github.com/jp9000/obs-studio/releases.atom'
  name 'OBS'
  homepage 'http://obsproject.com/'
  license :gpl

  pkg 'OBS.mpkg'

  uninstall :pkgutil => 'org.obsproject.pkg.obs-studio',
            :delete => '/Applications/SyphonInject.app'

  zap :delete => [
                  '/private/var/db/receipts/zakk.lol.SyphonInject.bom',
                  '/private/var/db/receipts/zakk.lol.SyphonInject.plist'
                 ]
end
