cask 'rust' do
  version '1.5.0'
  sha256 '5b0870d858f7527d96fc4f81d4371ae70d332c948cbbf0a7ad284a764974b81f'

  url "https://static.rust-lang.org/dist/rust-#{version}-x86_64-apple-darwin.pkg"
  name 'Rust'
  homepage 'https://www.rust-lang.org/'
  license :oss

  pkg "rust-#{version}-x86_64-apple-darwin.pkg"

  uninstall pkgutil: 'org.rust-lang.rust'
end
