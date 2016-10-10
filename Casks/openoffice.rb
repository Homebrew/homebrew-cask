cask 'openoffice' do
  version '4.1.3'

  language 'en', default: true do
    sha256 '2eac3c6630ddbd6be771337001c8f877c2ff811620042e6071ef396788d480d8'
    'en-US'
  end

  language 'fr' do
    sha256 'a302fdff1deb65cc443a46884c37b3da5e29ae5679f9e36db038d0e0b9b40a3f'
    'fr'
  end

  language 'gl' do
    sha256 'f1db7dd745d7ed3b8ea01e459d0e2506e6e2fe39f0c498bdecdedb5f738260ec'
    'gl'
  end

  language 'pt-BR' do
    sha256 '31b6697151561d5d53134439e4bc18682626fe79a4d17cb8d309b4b02af84e45'
    'pt-BR'
  end

  language 'pt' do
    sha256 '3e53f8f842945e6a191e8863824f7d4a4cea7065bda5d7e88cf2c63522506380'
    'pt'
  end

  # sourceforge.net/openofficeorg.mirror was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/openofficeorg.mirror/Apache_OpenOffice_#{version}_MacOS_x86-64_install_#{language}.dmg"
  appcast 'https://sourceforge.net/projects/openofficeorg.mirror/rss',
          checkpoint: '73cec0d3f0a0d7807a57960eb4147c7c0143870622b6ed7271b0e47c171c9f50'
  name 'Apache OpenOffice'
  homepage 'https://www.openoffice.org/'

  app 'OpenOffice.app'

  zap delete: '~/Library/Application Support/OpenOffice'
end
