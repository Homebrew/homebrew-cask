cask 'pencil2d' do
  version '0.6.3'
  sha256 'a5ef7afa72ec437471f9aa86bd70a09e57b7b9b49718bff7078e6c3b37bddba3'

  # github.com/pencil2d/pencil was verified as official when first introduced to the cask
  url "https://github.com/pencil2d/pencil/releases/download/v#{version}/pencil2d-mac-#{version}.zip"
  appcast 'https://github.com/pencil2d/pencil/releases.atom'
  name 'Pencil2D Animation'
  homepage 'https://www.pencil2d.org/'

  depends_on macos: '>= :sierra'

  app 'Pencil2D/Pencil2D.app'
end
