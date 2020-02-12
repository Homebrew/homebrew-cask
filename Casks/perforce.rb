cask 'perforce' do
  version '19.2,1915892'
  sha256 'd3f19333afb01ab82fdd661abb4b83bc36f64db4fe0c4ee050e88b99b5958f55'

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
