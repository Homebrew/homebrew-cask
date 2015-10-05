cask :v1 => 'rust' do
  version '1.3.0'
  sha256 '26dfc4ec42b89aaac4d5db1bbb688e22fe6a276dc40e8c7c6da795b61b6d3ffa'

  url "https://static.rust-lang.org/dist/rust-#{version}-x86_64-apple-darwin.pkg"
  name 'Rust'
  homepage 'http://www.rust-lang.org/'
  license :oss

  pkg "rust-#{version}-x86_64-apple-darwin.pkg"

  uninstall :pkgutil => 'org.rust-lang.rust'
end
