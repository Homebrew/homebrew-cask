cask 'ncar-ncl' do
  version '6.4.0'

  if MacOS.version == :el_capitan
    sha256 '2e1a2957dacd14835716f0f7309117a35e1f6255fa8569d0dc3038c42df9cbfd'
    url 'https://www.earthsystemgrid.org/download/fileDownload.html?logicalFileId=1139ad88-fa02-11e6-a976-00c0f03d5b7c'
  else
    sha256 '3db9396a6b33eff1a5d31b8e4d41eeac17f459a2740b614131fbbe943bc76a3c'
    url 'https://www.earthsystemgrid.org/download/fileDownload.html?logicalFileId=0a459666-fa02-11e6-a976-00c0f03d5b7c'
  end

  appcast 'https://www.ncl.ucar.edu/current_release.shtml',
          checkpoint: 'd8de7ea6d65bdb008d2080157cb901d37eaeaeb501742ea54c7f209ac6e8ea85'
  name 'NCAR Command Language'
  name 'ncl'
  homepage 'https://www.ncl.ucar.edu/'

  depends_on cask: 'xquartz'
  depends_on formula: 'gcc'
  depends_on macos: '>= :el_capitan'

  artifact 'include', target: '/usr/local/ncl-6.3.0/include'
  artifact 'bin', target: '/usr/local/ncl-6.3.0/bin'
  artifact 'lib', target: '/usr/local/ncl-6.3.0/lib'

  caveats <<-EOS.undent
    To use ncar-ncl, you must add the $NCARG_ROOT/bin directory
    to your PATH environment variable.

    For bash shell, add these lines to ~/.bash_profile:

      export NCARG_ROOT=/usr/local/ncl-6.4.0
      export PATH=$NCARG_ROOT/bin:"$PATH"

    You may also need to modify your DYLD_FALLBACK_LIBRARY_PATH
    environment variable:

    export DYLD_FALLBACK_LIBRARY_PATH=$(dirname $(gfortran --print-file-name libgfortran.3.dylib)):$DYLD_FALLBACK_LIBRARY_PATH

    For other information, please see:
    https://www.ncl.ucar.edu/Download/macosx.shtml
  EOS
end
