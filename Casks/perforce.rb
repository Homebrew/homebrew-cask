cask 'perforce' do
  version '19.2,1942501'
  sha256 'd7d665d1e9ff538790ae17fbe38c2d54597a9ea36bbe0e0b4ef9e178cd8e896d'

  url "https://cdist2.perforce.com/perforce/r#{version.before_comma}/bin.macosx1010x86_64/helix-core-server.tgz"
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
