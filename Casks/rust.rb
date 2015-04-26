cask :v1 => 'rust' do
  version '1.0.0-beta.2'
  sha256 '683d644eda84e1aa9715b8f4fc3e4212675406a6edd1b53a9a9577c7fef81376'

  url "https://static.rust-lang.org/dist/rust-#{version}-x86_64-apple-darwin.pkg"
  name 'Rust'
  homepage 'http://www.rust-lang.org/'
  license :oss

  pkg "rust-#{version}-x86_64-apple-darwin.pkg"

  uninstall :pkgutil => 'org.rust-lang.rust'
end
