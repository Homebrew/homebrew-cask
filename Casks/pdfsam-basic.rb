cask 'pdfsam-basic' do
  version '2.2.4'
  sha256 'fa8686d2be68ee67be40324723f316e8d5b708924e25b58af5296f7f302ede46'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/torakiki/pdfsam-v2/releases/download/v#{version}/pdfsam-#{version}.dmg"
  appcast 'https://github.com/torakiki/pdfsam-v2/releases.atom',
          checkpoint: 'd8dd91d9fdd50bd85655d34ba9e78f6a9ab224f3c6edb61a8ed0acf043dfba99'
  name 'PDFsam Basic'
  homepage 'http://www.pdfsam.org/'
  license :gpl

  app "PDFsam Basic #{version}.app"
end
