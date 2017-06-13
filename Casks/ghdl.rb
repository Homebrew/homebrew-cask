cask 'ghdl' do
  version '0.33'
  sha256 '665f487c936be041d27a0f9d638109e63f1706cf7b3d8ceddb81db5fb2f71d0e'

  # github.com/tgingold/ghdl was verified as official when first introduced to the cask
  url "https://github.com/tgingold/ghdl/releases/download/v#{version}/ghdl-#{version}-llvm-darwin13.pkg"
  appcast 'https://github.com/tgingold/ghdl/releases.atom',
          checkpoint: '23d87b7efbb471cdd2425f9a95a4e92dccf4d9cd8bcdce4316c983f6503f312a'
  name 'GHDL'
  homepage 'http://ghdl.free.fr/'

  pkg "ghdl-#{version}-llvm-darwin13.pkg"

  uninstall pkgutil: "com.ktz.pkg.ghdl-#{version.no_dots}-llvm-darwin13"
end
