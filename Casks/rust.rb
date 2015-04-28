cask :v1 => 'rust' do
  version '1.0.0-beta.3'
  sha256 '1c6a3027efab9eee02a4a0cfc1552435f9c5e4a2f1da3d3292df2a900ed6fde2'

  url "https://static.rust-lang.org/dist/rust-#{version}-x86_64-apple-darwin.pkg"
  name 'Rust'
  homepage 'http://www.rust-lang.org/'
  license :oss

  pkg "rust-#{version}-x86_64-apple-darwin.pkg"

  uninstall :pkgutil => 'org.rust-lang.rust'
end
