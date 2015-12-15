cask :v1 => 'obs' do
  version '0.12.4'
  sha256 'd34ee7c2100fdf99074b6d75a9f28c2780c37bd02c9a3bfb899502828e4797e0'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/jp9000/obs-studio/releases/download/#{version}/obs-#{version}-installer.dmg"
  appcast 'https://github.com/jp9000/obs-studio/releases.atom'
  name 'OBS'
  homepage 'https://obsproject.com/'
  license :gpl

  pkg 'OBS.pkg'

  uninstall :pkgutil => 'org.obsproject.pkg.obs-studio',
            :delete => '/Applications/SyphonInject.app'

  zap :delete => [
                  '/private/var/db/receipts/zakk.lol.SyphonInject.bom',
                  '/private/var/db/receipts/zakk.lol.SyphonInject.plist'
                 ]
end
