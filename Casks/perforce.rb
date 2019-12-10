cask 'perforce' do
  version '19.2'
  sha256 'b39f2c2c16ba268d4a9e5a2b6be4a063d7cc4da573cdc4accf9bdf803ca45d95'

  url "https://cdist2.perforce.com/perforce/r#{version.major_minor}/bin.macosx1010x86_64/helix-core-server.tgz"
  name 'Perforce Helix Versioning Engine'
  homepage 'https://www.perforce.com/'

  binary 'p4'
  binary 'p4broker'
  binary 'p4d'
  binary 'p4p'

  caveats <<~EOS
    Instructions on using the Helix Versioning Engine are available in

      #{staged_path}
  EOS
end
