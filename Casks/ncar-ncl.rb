cask 'ncar-ncl' do
  version '6.4.0'

  if MacOS.version == :el_capitan
    sha256 '2e1a2957dacd14835716f0f7309117a35e1f6255fa8569d0dc3038c42df9cbfd'
    url "https://www.earthsystemgrid.org/dataset/ncl.#{version.no_dots}.dap/file/ncl_ncarg-#{version}-MacOS_10.11_64bit_gnu610.tar.gz"
  else
    sha256 '3db9396a6b33eff1a5d31b8e4d41eeac17f459a2740b614131fbbe943bc76a3c'
    url "https://www.earthsystemgrid.org/dataset/ncl.#{version.no_dots}.dap/file/ncl_ncarg-#{version}-MacOS_10.12_64bit_gnu530.tar.gz"
  end

  appcast 'https://www.ncl.ucar.edu/current_release.shtml',
          checkpoint: 'd56aa8f16bdc52e51a71fd6d052d65e3afe01afc613f623b38051162b9101b82'
  name 'NCAR Command Language'
  name 'ncl'
  homepage 'https://www.ncl.ucar.edu/'

  depends_on x11: true
  depends_on formula: 'gcc'
  depends_on macos: '>= :el_capitan'

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
