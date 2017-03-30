class Rust < Cask
   url "http://static.rust-lang.org/dist/rust-0.10-x86_64-apple-darwin.pkg"
   homepage 'http://www.rust-lang.org/'
   version '0.10'
   sha256 '332253023b8f641b6d0b21289a1542521d83d1e77c6aa4d1a9b94c2927769407'
   install 'rust-0.10-x86_64-apple-darwin.pkg'
   uninstall :pkgutil => 'org.rust-lang.rust'
end
