cask 'obs' do
  version '0.15.1'
  sha256 '68d9f52aeee05191539129afcc5fa74011293d15410acae759c8eff76e540771'

  # github.com/jp9000/obs-studio was verified as official when first introduced to the cask
  url "https://github.com/jp9000/obs-studio/releases/download/#{version}/obs-#{version}-installer.dmg"
  appcast 'https://github.com/jp9000/obs-studio/releases.atom',
          checkpoint: '161d6077d10e27243b8b8d0134198adcda7695754fd1cd33687cc2e55b70b5ec'
  name 'OBS'
  homepage 'https://obsproject.com/'

  pkg 'OBS.pkg'

  uninstall pkgutil: 'org.obsproject.pkg.obs-studio',
            delete:  '/Applications/SyphonInject.app'

  zap delete: [
                '/private/var/db/receipts/zakk.lol.SyphonInject.bom',
                '/private/var/db/receipts/zakk.lol.SyphonInject.plist',
              ]
end
