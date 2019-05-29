cask 'openoffice' do
  version '4.1.6'

  language 'en', default: true do
    sha256 '9953baaf77fb31195c0873bbe6583de79bab3197381dc8769a8fec784c422664'
    'en-US'
  end

  language 'fr' do
    sha256 '88496142984d3d2395a5e9931ed1f955573681d74ad5251e5890cf8a118c3b09'
    'fr'
  end

  language 'gl' do
    sha256 '3fb64043c903c8c7c9f25831a46d6592e343de52be90b37911723ba55aaed29a'
    'gl'
  end

  language 'pt-BR' do
    sha256 '8689887708e18c302809cac84b8f871153a6f76909c11fc2e3ea725872e82a5d'
    'pt-BR'
  end

  language 'pt' do
    sha256 'dbfddf325cad9034b3e6630fa244303a0ba1ae9273165b3b9c9c71c3f8e858bb'
    'pt'
  end

  language 'ko' do
    sha256 '2c9798bde42c6d758b2a189aa5dd1170bdfed9c6346fdf8de43a276ee1de2c80'
    'ko'
  end

  # sourceforge.net/openofficeorg.mirror was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/openofficeorg.mirror/Apache_OpenOffice_#{version}_MacOS_x86-64_install_#{language}.dmg"
  appcast 'https://sourceforge.net/projects/openofficeorg.mirror/rss'
  name 'Apache OpenOffice'
  homepage 'https://www.openoffice.org/'

  app 'OpenOffice.app'

  zap trash: '~/Library/Application Support/OpenOffice'
end
