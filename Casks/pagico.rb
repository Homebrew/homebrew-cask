cask 'pagico' do
  version '9.0.3055'
  sha256 'c03f90e89921e8daab70cfcf58a8f6e7101b4de43a78e2013a609b8d6095c082'

  url "https://www.pagico.com/downloads/Pagico_macOS_r#{version.patch}.dmg"
  appcast "https://www.pagico.com/api/pagico#{version.major}.mac.xml",
          configuration: version.patch
  name 'Pagico'
  homepage 'https://www.pagico.com/'

  depends_on macos: '>= :sierra'

  app 'Pagico.app'
end
