cask 'perforce' do
  version '19.1-1845410'
  sha256 '5ef96eef8f3aee15d823c166ae6244ecf0bd7d2b79af5667994fdc92756e67ff'

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
