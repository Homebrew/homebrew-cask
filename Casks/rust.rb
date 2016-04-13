cask 'rust' do
  version '1.7.0'
  sha256 'fd35962f87a3172a6f0a6907a732e992bdb9c594a12694c1b836b1ed9667ed05'

  url "https://static.rust-lang.org/dist/rust-#{version}-x86_64-apple-darwin.pkg"
  name 'Rust'
  homepage 'https://www.rust-lang.org/'
  license :oss

  pkg "rust-#{version}-x86_64-apple-darwin.pkg"

  uninstall pkgutil: 'org.rust-lang.rust'
end
