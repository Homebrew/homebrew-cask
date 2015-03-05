cask :v1 => 'pdfsam-basic' do
  version '2.2.4'
  sha256 'fa8686d2be68ee67be40324723f316e8d5b708924e25b58af5296f7f302ede46'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/torakiki/pdfsam-v2/releases/download/v#{version}/pdfsam-#{version}.dmg"
  homepage 'http://www.pdfsam.org/'
  license :gpl

  app "PDFsam Basic #{version}.app"
end
