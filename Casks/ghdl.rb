cask 'ghdl' do
  version '0.34'
  sha256 '7d38686e10d313a2d891bf102fe2234886a4294243d0637861b3b8e5e8ac5bd4'

  # github.com/tgingold/ghdl was verified as official when first introduced to the cask
  url "https://github.com/tgingold/ghdl/releases/download/v#{version}/ghdl-v#{version}-llvm-darwin13.pkg"
  appcast 'https://github.com/tgingold/ghdl/releases.atom',
          checkpoint: '87c8f2b544234fa20b7e9d61d7afa21cc01e084e285a6b4c4799a5ee1ae46706'
  name 'GHDL'
  homepage 'http://ghdl.free.fr/'

  pkg "ghdl-v#{version}-llvm-darwin13.pkg"

  uninstall pkgutil: "com.ktz.pkg.ghdl-#{version}-llvm-darwin13"
end
