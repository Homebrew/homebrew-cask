cask 'pagico' do
  version '9.4.20200611'
  sha256 'bbf06edb058ded3304c4a29ed5be54e94ad5021d6c25d9c6b0586a489333c8b0'

  url "https://www.pagico.com/downloads/Pagico_macOS_r#{version.patch}.dmg"
  appcast "https://www.pagico.com/api/pagico#{version.major}.mac.xml",
          must_contain: version.patch
  name 'Pagico'
  homepage 'https://www.pagico.com/'

  depends_on macos: '>= :sierra'

  app 'Pagico.app'
end
