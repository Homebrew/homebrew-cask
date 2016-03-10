cask 'obs' do
  version '0.13.1'
  sha256 'aa2f4b03c3bcbfedb19d7d0a20e1738e2cc8d152b1a433ca41aad66e28ecf71d'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/jp9000/obs-studio/releases/download/#{version}/obs-#{version}-installer.dmg"
  appcast 'https://github.com/jp9000/obs-studio/releases.atom',
          checkpoint: '915331f13a867897fc1cd8dd70012f249caaf55b32573712ffafbd32a1d70072'
  name 'OBS'
  homepage 'https://obsproject.com/'
  license :gpl

  pkg 'OBS.pkg'

  uninstall pkgutil: 'org.obsproject.pkg.obs-studio',
            delete:  '/Applications/SyphonInject.app'

  zap delete: [
                '/private/var/db/receipts/zakk.lol.SyphonInject.bom',
                '/private/var/db/receipts/zakk.lol.SyphonInject.plist',
              ]
end
