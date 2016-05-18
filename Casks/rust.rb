cask 'rust' do
  version '1.8.0'
  sha256 'ed6b384b84bc45a8bf8c92583de90b7dd01bf82b47070877325dfa7d79fd7a41'

  url "https://static.rust-lang.org/dist/rust-#{version}-x86_64-apple-darwin.pkg"
  name 'Rust'
  homepage 'https://www.rust-lang.org/'
  license :oss

  pkg "rust-#{version}-x86_64-apple-darwin.pkg"

  uninstall pkgutil: 'org.rust-lang.rust'
end
