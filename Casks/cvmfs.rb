cask 'cvmfs' do
  version '2.5.0'
  sha256 '006a93a921858b584469303961f232d40fb10215f21091dbbca40b18fc83e4f1'

  url "https://ecsft.cern.ch/dist/cvmfs/cvmfs-#{version}/cvmfs-#{version}.pkg"
  name 'CernVM File System'
  homepage 'https://cernvm.cern.ch/portal/filesystem'

  depends_on cask: 'osxfuse'

  pkg "cvmfs-#{version}.pkg"

  uninstall pkgutil: 'ch.cern.cvmfs.pkg.Core'

  caveats do
    files_in_usr_local
  end
end
