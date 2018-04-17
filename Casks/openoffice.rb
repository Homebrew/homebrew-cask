cask 'openoffice' do
  version '4.1.5'

  language 'en', default: true do
    sha256 '6b68adad6da7713e3fa62f01209826e0f5f87fc648d39f78e463b2b4b8223c59'
    'en-US'
  end

  language 'fr' do
    sha256 'bae9f86d936ee595fe074895886972c8d25f806a815e3e2e9d2e5acb7f86508f'
    'fr'
  end

  language 'gl' do
    sha256 'edfdd62c2f3ada01cb39f73e529ac0665b21b43b649b4a2699f69e6ebcbad26c'
    'gl'
  end

  language 'pt-BR' do
    sha256 '2dd1e7f4161b34fe17e8f69d67186bdcda32d4df7ca0963dd3c8d87314d57699'
    'pt-BR'
  end

  language 'pt' do
    sha256 'deed9464b9c88dbf84228547fd9d6eb8384dd304bc513249d64996e1754fa78a'
    'pt'
  end

  # sourceforge.net/openofficeorg.mirror was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/openofficeorg.mirror/Apache_OpenOffice_#{version}_MacOS_x86-64_install_#{language}.dmg"
  appcast 'https://sourceforge.net/projects/openofficeorg.mirror/rss',
          checkpoint: '778a03ce902c1ed63fb9b98c135142592639e15b47a90ca6efe98aa342d9023f'
  name 'Apache OpenOffice'
  homepage 'https://www.openoffice.org/'

  app 'OpenOffice.app'

  zap trash: '~/Library/Application Support/OpenOffice'
end
