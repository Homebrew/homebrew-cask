class Rust < Cask
   version 'latest'
   sha256 :no_check
   
   url "http://static.rust-lang.org/dist/rust-nightly-x86_64-apple-darwin.pkg"
   homepage 'http://www.rust-lang.org/'
   
   install 'rust-nightly-x86_64-apple-darwin.pkg'
   uninstall :pkgutil => 'org.rust-lang.rust'
end
