cask 'konica-minolta-bizhub-c220-c280-c360-driver' do
  version '3.11.0,201606-27043313'
  sha256 '236d1fd8acf2888ac48668eebf02aa8de567d0f481142e2ac9d4d7b2a9100587'

  # konicaminolta.com was verified as official when first introduced to the cask
  url "https://o.cses.konicaminolta.com/file/Default.aspx?FilePath=DL/#{version.after_comma.hyphens_to_slashes}/BHC360PSMacOS109_#{version.before_comma.no_dots}MU.dmg"
  name 'Konica Minolta Bizhub C220/C280/C360 PostScript Printer Driver'
  homepage 'https://www.konicaminolta.eu/en/business-solutions/support/download-center.html'

  depends_on macos: '>= 10.9'

  pkg 'bizhub_C360_109.pkg'

  uninstall pkgutil: 'jp.konicaminolta.print.package.C360'
end
