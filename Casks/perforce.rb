cask 'perforce' do
  version '16.2'
  sha256 '1e6165711902b65612637aa190e7ba09a8559f1e4e057e2b4587e7756c2bef59'

  url "https://www.perforce.com/downloads/perforce/r#{version}/bin.macosx105x86_64/p4"
  name 'Perforce revision control system'
  homepage 'http://www.perforce.com/'

  binary 'p4'
end
