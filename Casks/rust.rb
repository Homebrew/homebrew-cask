cask :v1 => 'rust' do
  version '1.1.0'
  sha256 '5886de03ef376c29e9b3b79dc70a0b66f41e1a62c54da85475ee0d685ae2774a'

  url "https://static.rust-lang.org/dist/rust-#{version}-x86_64-apple-darwin.pkg"
  name 'Rust'
  homepage 'http://www.rust-lang.org/'
  license :oss

  pkg "rust-#{version}-x86_64-apple-darwin.pkg"

  uninstall :pkgutil => 'org.rust-lang.rust'
end
