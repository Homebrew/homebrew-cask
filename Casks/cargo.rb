class Cargo < Cask
  version :latest
  sha256 :no_check

  target = 'cargo-nightly-x86_64-apple-darwin'

  url "http://static.rust-lang.org/cargo-dist/#{target}.tar.gz"
  homepage 'http://www.crates.io/'
  license :oss


  binary "#{target}/bin/cargo"

  artifact "#{target}/share/man/man1/cargo.1", :target => '/usr/local/share/man/man1/cargo.1'
  %w{LICENSE-APACHE LICENSE-MIT LICENSE-THIRD-PARTY README.md}.each do |doc_file|
    artifact "#{target}/share/doc/cargo/#{doc_file}", :target => "/usr/local/share/doc/cargo/#{doc_file}"
  end
end
