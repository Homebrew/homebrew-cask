cask 'ncar-ncl' do
  version '6.3.0'

  if MacOS.version == :mountain_lion
    sha256 '154914834df0eeb69b778698062900175a5dcc88dcd76545cc2c504551cd756a'
    url 'https://www.earthsystemgrid.org/download/fileDownload.htm?logicalFileId=e0852fc5-cd9a-11e4-bb80-00c0f03d5b7c'
  elsif MacOS.version == :mavericks
    sha256 'abe78b6830c43f8056cad02f5fbcbf4de82c4948b95b757b0d8a72d4776cbbf6'
    url 'https://www.earthsystemgrid.org/download/fileDownload.htm?logicalFileId=e0849384-cd9a-11e4-bb80-00c0f03d5b7c'
  else
    sha256 'b0a7a02d1044380b6f33d274ccd0e870e06f11fbb98e72a58844eee98c98ff8d'
    url 'https://www.earthsystemgrid.org/download/fileDownload.htm?logicalFileId=e085cc06-cd9a-11e4-bb80-00c0f03d5b7c'
  end

  name 'NCAR Command Language'
  name 'ncl'
  homepage 'https://www.ncl.ucar.edu/'

  depends_on cask: 'xquartz'
  depends_on formula: 'gcc'
  depends_on macos: '>= 10.8'

  artifact 'include', target: '/usr/local/ncl-6.3.0/include'
  artifact 'bin', target: '/usr/local/ncl-6.3.0/bin'
  artifact 'lib', target: '/usr/local/ncl-6.3.0/lib'

  caveats do
    <<-EOS.undent
    To use ncar-ncl, you must add the $NCARG_ROOT/bin directory
    to your PATH environment variable.

    For bash shell, add these lines to ~/.bash_profile:

      export NCARG_ROOT=/usr/local/ncl-6.3.0
      export PATH=$NCARG_ROOT/bin:"$PATH"

    You may also need to modify your DYLD_FALLBACK_LIBRARY_PATH
    environment variable:

    export DYLD_FALLBACK_LIBRARY_PATH=$(dirname $(gfortran --print-file-name libgfortran.3.dylib)):$DYLD_FALLBACK_LIBRARY_PATH

    For other information, please see:
    https://www.ncl.ucar.edu/Download/macosx.shtml
    EOS
  end
end
