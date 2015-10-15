cask :v1 => 'konica-minolta-bizhub-c220-c280-c360-driver' do
  version '3.9.0'
  sha256 '0468ff398757a5e73418305c38aee376c4b3dd09c2b0783902e5b05fd072d29b'

  url "https://o.cses.konicaminolta.com/file/Default.aspx?FilePath=DL/201411/13064825/BHC360PSMacOS109_#{version.delete('.')}MU.dmg"
  name 'Konica Minolta Bizhub C220/C280/C360 PostScript Printer Driver'
  homepage 'https://www.konicaminolta.eu/en/business-solutions/support/download-center.html'
  license :gratis
  tags :vendor => 'Konica Minolta'

  pkg 'bizhub_C360_109.pkg'

  uninstall :pkgutil => 'jp.konicaminolta.print.package.C360'
end
