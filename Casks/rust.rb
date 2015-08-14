cask :v1 => 'rust' do
  version '1.2.0'
  sha256 '4e07f498ecfdc71e0c028bfc1bb17ac7300c0b8de4217fddf2bcad4fd6aada1e'

  url "https://static.rust-lang.org/dist/rust-#{version}-x86_64-apple-darwin.pkg"
  name 'Rust'
  homepage 'http://www.rust-lang.org/'
  license :oss

  pkg "rust-#{version}-x86_64-apple-darwin.pkg"

  uninstall :pkgutil => 'org.rust-lang.rust'
end
