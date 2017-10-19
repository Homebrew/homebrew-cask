cask 'openoffice' do
  version '4.1.4'

  language 'en', default: true do
    sha256 'ec5f1b8ed570736a58fec93d6b6e52065e3e6662fe863716e2a5dbe166d3c1f4'
    'en-US'
  end

  language 'fr' do
    sha256 '5b3e7eeba133186e382e79fdf2c36b8833af5463d4f5cb89cc01b987bb6a2de4'
    'fr'
  end

  language 'gl' do
    sha256 'b27988df0ceea64e2a1bde8e148dcd0dd9f322979320778027c63270d2967a0b'
    'gl'
  end

  language 'pt-BR' do
    sha256 '54effa845b73388e814df9936b9960fd2ab8d9e80c087d8c10ee92c08492448c'
    'pt-BR'
  end

  language 'pt' do
    sha256 '39ce75f2dbf1df1d5b10163921d492f5bad36291dedac963cc8e170df086c77f'
    'pt'
  end

  # sourceforge.net/openofficeorg.mirror was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/openofficeorg.mirror/Apache_OpenOffice_#{version}_MacOS_x86-64_install_#{language}.dmg"
  appcast 'https://sourceforge.net/projects/openofficeorg.mirror/rss',
          checkpoint: '5af9e638312f0728a6ada93777c209b1d660f5e582b2ea2374febcc7ad829756'
  name 'Apache OpenOffice'
  homepage 'https://www.openoffice.org/'

  app 'OpenOffice.app'

  zap trash: '~/Library/Application Support/OpenOffice'
end
