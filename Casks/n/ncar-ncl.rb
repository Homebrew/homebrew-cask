cask "ncar-ncl" do
  version "6.6.2"
  sha256 "e2cd644f6b1bb41f55480b8818319e60c450998e31e5e489c69a5e84f3d1f359"

  url "https://www.earthsystemgrid.org/api/v1/dataset/ncl.#{version.no_dots}.dap/file/ncl_ncarg-#{version}-MacOS_10.14_64bit_gnu730.tar.gz",
      verified: "earthsystemgrid.org/api/v1/dataset/"
  name "NCAR Command Language"
  name "ncl"
  desc "Interpreted language for scientific data analysis and visualization"
  homepage "https://www.ncl.ucar.edu/"

  disable! date: "2026-01-27", because: :no_longer_available

  depends_on cask: "xquartz"
  depends_on formula: "gcc"

  artifact "include", target: "#{HOMEBREW_PREFIX}/ncl-#{version}/include"
  artifact "bin", target: "#{HOMEBREW_PREFIX}/ncl-#{version}/bin"
  artifact "lib", target: "#{HOMEBREW_PREFIX}/ncl-#{version}/lib"

  preflight do
    system_command "/bin/mkdir", args: ["-p", "#{HOMEBREW_PREFIX}/ncl-#{version}"], sudo: true
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
