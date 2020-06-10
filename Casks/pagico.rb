cask 'pagico' do
  version '9.4.20200608'
  sha256 'b4d1a080d18f526cfb24aefb42cb084eb90a5b64105bcdc74b77612196d89b25'

  url "https://www.pagico.com/downloads/Pagico_macOS_r#{version.patch}.dmg"
  appcast "https://www.pagico.com/api/pagico#{version.major}.mac.xml",
          configuration: version.patch
  name 'Pagico'
  homepage 'https://www.pagico.com/'

  depends_on macos: '>= :sierra'

  app 'Pagico.app'
end
