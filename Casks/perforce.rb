cask 'perforce' do
  version '19.1'
  sha256 :no_check # required as upstream package is updated in-place

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
