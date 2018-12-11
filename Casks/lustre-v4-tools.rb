cask 'lustre-v4-tools' do
  version 'III-c'
  sha256 'ba019e91f4f072b98429336d6be92504a7384522dad66afc77a8be513e27bb4b'

  url 'https://www-verimag.imag.fr/DIST-TOOLS/SYNCHRONE/lustre-v4/distrib/macosx/lustre-v4-III-c-macosx.tgz'
  name 'Lustre V4 Tools Suite'
  homepage 'https://www-verimag.imag.fr/DIST-TOOLS/SYNCHRONE/lustre-v4/distrib/index.html'

  depends_on x11: true

  binary 'lustre-v4-III-c-macosx/bin/bddc'
  binary 'lustre-v4-III-c-macosx/bin/ec2lf'
  binary 'lustre-v4-III-c-macosx/bin/lesar'
  binary 'lustre-v4-III-c-macosx/bin/lus2oc'
  binary 'lustre-v4-III-c-macosx/bin/pollux'
  binary 'lustre-v4-III-c-macosx/bin/ec2ba'
  binary 'lustre-v4-III-c-macosx/bin/ec2lus'
  binary 'lustre-v4-III-c-macosx/bin/luciole'
  binary 'lustre-v4-III-c-macosx/bin/lusinfo'
  binary 'lustre-v4-III-c-macosx/bin/pwish'
  binary 'lustre-v4-III-c-macosx/bin/ec2ba2'
  binary 'lustre-v4-III-c-macosx/bin/ec2npc'
  binary 'lustre-v4-III-c-macosx/bin/lus2atg'
  binary 'lustre-v4-III-c-macosx/bin/lustre'
  binary 'lustre-v4-III-c-macosx/bin/reglo'
  binary 'lustre-v4-III-c-macosx/bin/ec2be'
  binary 'lustre-v4-III-c-macosx/bin/ec2npp'
  binary 'lustre-v4-III-c-macosx/bin/lus2aut'
  binary 'lustre-v4-III-c-macosx/bin/oc2atg'
  binary 'lustre-v4-III-c-macosx/bin/rif2tcl'
  binary 'lustre-v4-III-c-macosx/bin/ec2blif'
  binary 'lustre-v4-III-c-macosx/bin/ec2oc'
  binary 'lustre-v4-III-c-macosx/bin/lus2c'
  binary 'lustre-v4-III-c-macosx/bin/oc2aut'
  binary 'lustre-v4-III-c-macosx/bin/sim2chro'
  binary 'lustre-v4-III-c-macosx/bin/ec2c'
  binary 'lustre-v4-III-c-macosx/bin/ecexe'
  binary 'lustre-v4-III-c-macosx/bin/lus2dot'
  binary 'lustre-v4-III-c-macosx/bin/oc2dot'
  binary 'lustre-v4-III-c-macosx/bin/simec'
  binary 'lustre-v4-III-c-macosx/bin/ec2cnf'
  binary 'lustre-v4-III-c-macosx/bin/ecverif'
  binary 'lustre-v4-III-c-macosx/bin/lus2dro'
  binary 'lustre-v4-III-c-macosx/bin/ocmin'
  binary 'lustre-v4-III-c-macosx/bin/xlesar'
  binary 'lustre-v4-III-c-macosx/bin/ec2dro'
  binary 'lustre-v4-III-c-macosx/bin/ecwish'
  binary 'lustre-v4-III-c-macosx/bin/lus2ec'
  binary 'lustre-v4-III-c-macosx/bin/poc'

  caveats <<~EOS
    You shoud set your LUSTRE_INSTALL to /usr/local/Caskroom/#{cask}/#{version}/lustre-v4-#{version}-macosx
    for instance by executing:
      echo \"export LUSTRE_INSTALL=/usr/local/Caskroom/#{cask}/#{version}/lustre-v4-#{version}-macosx\" >> ~/.bash_profile
  EOS
end
