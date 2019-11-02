cask 'perforce' do
  version '19.1-1876401'
  sha256 '4eb8a0632792f43e862e80cd8c40be5c22ab8e73555816a19710d9a1466298af'

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
