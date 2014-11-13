cask :v1 => 'cargo' do
  version :latest
  sha256 :no_check

  module Utils
    def self.distname
      'cargo-nightly-x86_64-apple-darwin'
    end
  end

  url "http://static.rust-lang.org/cargo-dist/#{Utils.distname}.tar.gz"
  homepage 'http://www.crates.io/'
  license :oss

  binary "#{Utils.distname}/bin/cargo"

  artifact "#{Utils.distname}/share/man/man1/cargo.1", :target => '/usr/local/share/man/man1/cargo.1'
  %w{LICENSE-APACHE LICENSE-MIT LICENSE-THIRD-PARTY README.md}.each do |doc_file|
    artifact "#{Utils.distname}/share/doc/cargo/#{doc_file}", :target => "/usr/local/share/doc/cargo/#{doc_file}"
  end
end
