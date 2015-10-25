cask :v1 => 'obs' do
  version '0.11.2'
  sha256 '651d40896c30b2e4c51b26f869b0950dfcb8baabed15ba81276ccae9471d2fec'

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
