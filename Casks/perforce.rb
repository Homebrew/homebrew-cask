cask 'perforce' do
  version '19.2'
  sha256 '6a67de554be77ba7d12c0ca807181bbeae6ea954d65c44c1bebc728170fe0ddc'

  url "https://cdist2.perforce.com/perforce/r#{version}/bin.macosx1010x86_64/helix-core-server.tgz"
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
