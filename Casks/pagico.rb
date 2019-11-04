cask 'pagico' do
  version '9.0.3057'
  sha256 'e370d491d9428af9dadb0a98a9ebd663e6096aed0283aa2477afdd4a7b7559bd'

  url "https://www.pagico.com/downloads/Pagico_macOS_r#{version.patch}.dmg"
  appcast "https://www.pagico.com/api/pagico#{version.major}.mac.xml",
          configuration: version.patch
  name 'Pagico'
  homepage 'https://www.pagico.com/'

  depends_on macos: '>= :sierra'

  app 'Pagico.app'
end
