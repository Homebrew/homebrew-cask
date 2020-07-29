cask 'pagico' do
  version '9.4.20200619'
  sha256 '1f361360fcd435829a77d0763d210fd49a0269efe7165f3fe3123af1a1454b40'

  url "https://www.pagico.com/downloads/Pagico_macOS_r#{version.patch}.dmg"
  appcast "https://www.pagico.com/api/pagico#{version.major}.mac.xml",
          must_contain: version.patch
  name 'Pagico'
  homepage 'https://www.pagico.com/'

  depends_on macos: '>= :sierra'

  app 'Pagico.app'
end
