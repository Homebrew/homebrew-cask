cask 'pdfsam-basic' do
  version '3.2.4'
  sha256 'bc016b4c59e9c8af2bdca337f6c2fc5b2ead25d8b23a8fbb8d7ff6c4350f5237'

  # github.com/torakiki/pdfsam was verified as official when first introduced to the cask
  url "https://github.com/torakiki/pdfsam/releases/download/v#{version}.RELEASE/PDFsam-#{version}.RELEASE.dmg"
  appcast 'https://github.com/torakiki/pdfsam/releases.atom',
          checkpoint: 'c3635fad8643f2fbb75ead16dd56a6ffc6b9426d68bb7d4e87ae15b16e533e03'
  name 'PDFsam Basic'
  homepage 'http://www.pdfsam.org/'

  app 'PDFsam.app'
end
