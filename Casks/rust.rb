cask 'rust' do
  version '1.10.0'
  sha256 'fa9849790170fb13f4e1b10bbc56cd87591f9e64bece25ee88d208bc4b270f84'

  url "https://static.rust-lang.org/dist/rust-#{version}-x86_64-apple-darwin.pkg"
  name 'Rust'
  homepage 'https://www.rust-lang.org/'
  license :oss

  pkg "rust-#{version}-x86_64-apple-darwin.pkg"

  uninstall pkgutil: 'org.rust-lang.rust'
end
