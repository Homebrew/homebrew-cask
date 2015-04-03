cask :v1 => 'rust' do
  version '1.0.0'
  sha256 '90ec7a87041a14fd20af56427912d6c048ed268bde0be607a9d2376feeeb1c2e'

  url "https://static.rust-lang.org/dist/rust-#{version}-beta-x86_64-apple-darwin.pkg"
  homepage 'http://www.rust-lang.org/'
  license :oss

  pkg "rust-#{version}-beta-x86_64-apple-darwin.pkg"

  uninstall :pkgutil => 'org.rust-lang.rust'
end
