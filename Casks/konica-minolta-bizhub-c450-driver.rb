cask 'konica-minolta-bizhub-c450-driver' do
  version '2.9.0'
  sha256 '3d970bba6e838cb1c88058c1eb653a00987f4a3a10689d250819f7a691820138'

  url 'https://o.cses.konicaminolta.com/file/Default.aspx?FilePath=dl/201403/28102636/bizhub_C450_109.dmg'
  name 'Konica Minolta Bizhub C450 Driver'
  homepage 'http://www.biz.konicaminolta.com/download/'

  pkg 'KONICAMINOLTA_C450_109.pkg'

  uninstall pkgutil: 'jp.konicaminolta.print.package.C450'
end
