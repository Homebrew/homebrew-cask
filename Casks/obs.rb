cask :v1 => 'obs' do
  version '0.12.0'
  sha256 '701b8d172b914fb574a70a0e4db907474c9c29316b05a2f41b6cfae872ab0c43'

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
