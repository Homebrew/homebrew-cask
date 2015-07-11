cask :v1 => 'obs' do
  version '0.11.1'
  sha256 'f7732b15c56c23246ffa8c8545e9f8c5501652eb516bedff76469cb70db8dc1b'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/jp9000/obs-studio/releases/download/#{version}/obs-#{version}-installer.dmg"
  appcast 'https://github.com/jp9000/obs-studio/releases.atom'
  name 'OBS'
  homepage 'https://obsproject.com/'
  license :gpl

  pkg 'OBS.mpkg'

  uninstall :pkgutil => 'org.obsproject.pkg.obs-studio',
            :delete => '/Applications/SyphonInject.app'

  zap :delete => [
                  '/private/var/db/receipts/zakk.lol.SyphonInject.bom',
                  '/private/var/db/receipts/zakk.lol.SyphonInject.plist'
                 ]
end
