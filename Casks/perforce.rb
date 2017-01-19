cask 'perforce' do
  version '16.2'
  sha256 '1e6165711902b65612637aa190e7ba09a8559f1e4e057e2b4587e7756c2bef59'

  url "http://cdist2.perforce.com/perforce/r#{version}/bin.darwin90x86/helix-versioning-engine.tgz"
  name 'Perforce Helix Versioning Engine'
  homepage 'http://www.perforce.com/'

  binary 'p4'
  binary 'p4broker'
  binary 'p4d'
  binary 'p4p'

  caveats <<-EOS.undent
    Instructions on using the Helix Versioning Engine are available in

      #{staged_path}
  EOS
end
