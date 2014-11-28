cask :v1 => 'rust' do
  version :latest
  sha256 :no_check

  url 'http://static.rust-lang.org/dist/rust-nightly-x86_64-apple-darwin.pkg'
  homepage 'http://www.rust-lang.org/'
  license :unknown

  pkg 'rust-nightly-x86_64-apple-darwin.pkg'

  uninstall :pkgutil => 'org.rust-lang.rust'
end
