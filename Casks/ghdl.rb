cask 'ghdl' do
  version '0.33'
  sha256 '665f487c936be041d27a0f9d638109e63f1706cf7b3d8ceddb81db5fb2f71d0e'

  # github.com/tgingold/ghdl was verified as official when first introduced to the cask
  url "https://github.com/tgingold/ghdl/releases/download/v#{version}/ghdl-#{version}-llvm-darwin13.pkg"
  appcast 'https://github.com/tgingold/ghdl/releases.atom',
          checkpoint: 'd6f629caf9ece3d3f1d8f9c5a0a0f48d1ed9116a8831342fcd28511a18eebeec'
  name 'GHDL'
  homepage 'http://ghdl.free.fr/'

  pkg "ghdl-#{version}-llvm-darwin13.pkg"

  uninstall pkgutil: "com.ktz.pkg.ghdl-#{version.no_dots}-llvm-darwin13"
end
