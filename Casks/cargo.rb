cask 'cargo' do
  version :latest
  sha256 :no_check

  module Utils
    def self.distname
      'cargo-nightly-x86_64-apple-darwin'
    end
  end

  # rust-lang.org/cargo-dist was verified as official when first introduced to the cask
  url "https://static.rust-lang.org/cargo-dist/#{Utils.distname}.tar.gz"
  name 'Cargo'
  homepage 'https://crates.io/'

  binary "#{Utils.distname}/cargo/bin/cargo"
  artifact "#{Utils.distname}/cargo/share/man/man1/cargo.1", target: '/usr/local/share/man/man1/cargo.1'
  %w[LICENSE-APACHE LICENSE-MIT LICENSE-THIRD-PARTY README.md].each do |doc_file|
    artifact "#{Utils.distname}/cargo/share/doc/cargo/#{doc_file}", target: "/usr/local/share/doc/cargo/#{doc_file}"
  end
end
