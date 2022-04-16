cask "ncar-ncl" do
  version "6.6.2"

  if MacOS.version <= :high_sierra
    sha256 "4e937a6de4303a4928f0f42390d991b12a37659726d15b9da7e8072db74e1867"
    url "https://www.earthsystemgrid.org/api/v1/dataset/ncl.#{version.no_dots}.dap/file/ncl_ncarg-#{version}-MacOS_10.13_64bit_gnu710.tar.gz",
        verified: "earthsystemgrid.org/api/v1/dataset/ncl."
  else
    sha256 "e2cd644f6b1bb41f55480b8818319e60c450998e31e5e489c69a5e84f3d1f359"
    url "https://www.earthsystemgrid.org/api/v1/dataset/ncl.#{version.no_dots}.dap/file/ncl_ncarg-#{version}-MacOS_10.14_64bit_gnu730.tar.gz",
        verified: "earthsystemgrid.org/api/v1/dataset/ncl."
  end

  name "NCAR Command Language"
  name "ncl"
  desc "Interpreted language for scientific data analysis and visualization"
  homepage "https://www.ncl.ucar.edu/"

  livecheck do
    url :homepage
    regex(/>Current\s*Version.*?v?(\d+(?:\.\d+)+)\s*?</i)
  end

  depends_on cask: "xquartz"
  depends_on formula: "gcc"
  depends_on macos: ">= :high_sierra"

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
