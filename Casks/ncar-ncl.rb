cask 'ncar-ncl' do
  version '6.5.0'

  if MacOS.version == :sierra
    sha256 'b107934b17085c39053467aa3faa07f00b4e18a89271a0b15eec6768d6ab06fb'
    url "https://www.earthsystemgrid.org/dataset/ncl.#{version.no_dots}.dap/file/ncl_ncarg-#{version}-MacOS_10.12_64bit_gnu710.tar.gz"
  else
    sha256 '18d95acc8a9904c930d61b24348d13603c53a28e7c50c86f28b4354f823dc3df'
    url "https://www.earthsystemgrid.org/dataset/ncl.#{version.no_dots}.dap/file/ncl_ncarg-#{version}-MacOS_10.13_64bit_gnu730.tar.gz"
  end

  appcast 'https://www.ncl.ucar.edu/current_release.shtml'
  name 'NCAR Command Language'
  name 'ncl'
  homepage 'https://www.ncl.ucar.edu/'

  depends_on x11: true
  depends_on formula: 'gcc'
  depends_on macos: '>= :sierra'

  artifact 'include', target: "#{HOMEBREW_PREFIX}/ncl-#{version}/include"
  artifact 'bin', target: "#{HOMEBREW_PREFIX}/ncl-#{version}/bin"
  artifact 'lib', target: "#{HOMEBREW_PREFIX}/ncl-#{version}/lib"

  preflight do
    system_command '/bin/mkdir', args: ['-p', "#{HOMEBREW_PREFIX}/ncl-#{version}"], sudo: true
  end

  uninstall delete: "#{HOMEBREW_PREFIX}/ncl-#{version}"

  caveats <<~EOS
    To use ncar-ncl, you must add the ${NCARG_ROOT}/bin directory
    to your PATH environment variable.

    For bash shell, add these lines to ~/.bash_profile:

      export NCARG_ROOT="#{HOMEBREW_PREFIX}/ncl-#{version}"
      export PATH="${NCARG_ROOT}/bin:${PATH}"

    You may also need to modify your DYLD_FALLBACK_LIBRARY_PATH
    environment variable:

    export DYLD_FALLBACK_LIBRARY_PATH=$(dirname $(gfortran --print-file-name libgfortran.3.dylib)):$DYLD_FALLBACK_LIBRARY_PATH

    For other information, please see:
    https://www.ncl.ucar.edu/Download/macosx.shtml
  EOS
end
