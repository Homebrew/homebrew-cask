cask 'miniconda' do
  version 'py37_4.8.2'
  sha256 'f3ede3a58d82fb5dcbca52d291a9edb5cd962d84d823a20693dd4bb27506cdd0'

  # repo.anaconda.com/miniconda/ was verified as official when first introduced to the cask
  url "https://repo.anaconda.com/miniconda/Miniconda3-#{version}-MacOSX-x86_64.pkg"
  name 'Continuum Analytics Miniconda'
  homepage 'https://conda.io/miniconda.html'

  auto_updates true

  pkg "Miniconda3-#{version}-MacOSX-x86_64.pkg"

  uninstall pkgutil: [
                       'io.continuum.pkg.apreinstall',
                       'io.continuum.pkg.conda.exe',
                       'io.continuum.pkg.pathupdate',
                       'io.continuum.pkg.postextract',
                       'io.continuum.pkg.preconda',
                     ]

  zap trash: [
               '~/.condarc',
               '~/.conda',
               '~/.continuum',
             ]

  caveats "The correct way to add conda to your path is by sourcing
           /opt/miniconda3/etc/profile.d/conda.sh path either every
           time you want or in your .bashrc file"
end
