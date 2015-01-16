cask :v1 => 'rust' do
  version '1.0.0-alpha'
  sha256 'b38eb92599249368a8b5ac87e2a47bcec4e57cd5557bd4869e848a16f1e16d23'

  url "https://static.rust-lang.org/dist/rust-#{version}-x86_64-apple-darwin.pkg"
  homepage 'http://www.rust-lang.org/'
  license :mit

  pkg "rust-#{version}-x86_64-apple-darwin.pkg"

  uninstall :pkgutil => 'org.rust-lang.rust'
end
