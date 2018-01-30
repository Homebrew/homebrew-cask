cask 'cvmfs' do
  version '2.4.4'
  sha256 '86c915b0e9ab7f811e9e9e86ced02c51cd0c1d247a70b20b85c18e17d70592a1'

  url "https://ecsft.cern.ch/dist/cvmfs/cvmfs-#{version}/cvmfs-#{version}.pkg"
  name 'CernVM File System'
  name 'CernVM-FS'
  name 'CVMFS'
  homepage 'https://cernvm.cern.ch/portal/filesystem'

  depends_on cask: 'osxfuse'

  pkg "cvmfs-#{version}.pkg"

  uninstall pkgutil: 'ch.cern.cvmfs.pkg.Core'

  caveats do
    files_in_usr_local

    <<~EOS
      For #{token} configuration and use instructions, see
        http://cvmfs.readthedocs.io/en/#{version.major}.#{version.minor}/cpt-quickstart.html#mac-os-x
    EOS
  end
end
