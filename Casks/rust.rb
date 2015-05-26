cask :v1 => 'rust' do
  version '1.0.0'
  sha256 '6781d3fb15d91e50b5a05a5e2858f55c2716760ce059b657b51239c294fe817b'

  url "https://static.rust-lang.org/dist/rust-#{version}-x86_64-apple-darwin.pkg"
  name 'Rust'
  homepage 'http://www.rust-lang.org/'
  license :oss

  pkg "rust-#{version}-x86_64-apple-darwin.pkg"

  uninstall :pkgutil => 'org.rust-lang.rust'
end
