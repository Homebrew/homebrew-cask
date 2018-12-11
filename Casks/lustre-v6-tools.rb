cask 'lustre-v6-tools' do
  version '762'
  sha256 'e1758b271626c5f781c2a3d7ec0b366563e08cb148efe1a4e6fdd9620b060a7b'

  url 'https://www-verimag.imag.fr/DIST-TOOLS/SYNCHRONE/lustre-v6/pre-compiled/i386-Darwin-lv6-bin-dist.tgz'
  name 'Lustre V6 Tools Suite'
  homepage 'https://www-verimag.imag.fr/DIST-TOOLS/SYNCHRONE/lustre-v6'

  depends_on cask: 'lustre-v4-tools'

  binary 'lv6-bin-dist/bin/call-via-socket'
  binary 'lv6-bin-dist/bin/check-rif'
  binary 'lv6-bin-dist/bin/ecexe-rif'
  binary 'lv6-bin-dist/bin/gnuplot-rif'
  binary 'lv6-bin-dist/bin/lurette'
  binary 'lv6-bin-dist/bin/lurette_old'
  binary 'lv6-bin-dist/bin/lus2lic'
  binary 'lv6-bin-dist/bin/lutin'
  binary 'lv6-bin-dist/bin/lv6'
  binary 'lv6-bin-dist/bin/read-rif.sh'
  binary 'lv6-bin-dist/bin/simec_trap'
end
