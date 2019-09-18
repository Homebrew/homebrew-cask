cask 'pagico' do
  version '8.18.2424'
  sha256 'b3b1ac854bc5e4755c422cea05477ce3d81ab8faa52d03a65c6e60ba2f1ac5e8'

  url "https://www.pagico.com/downloads/Pagico_macOS_r#{version.patch}.dmg"
  appcast "https://www.pagico.com/api/pagico#{version.major}.mac.xml",
          configuration: version.patch
  name 'Pagico'
  homepage 'https://www.pagico.com/'

  depends_on macos: '>= :sierra'

  app 'Pagico.app'
end
