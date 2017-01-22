cask 'perforce' do
  version '16.2'
  sha256 :no_check # required as upstream package is updated in-place

  url "http://cdist2.perforce.com/perforce/r#{version}/bin.darwin90x86/helix-versioning-engine.tgz"
  name 'Perforce Helix Versioning Engine'
  homepage 'https://www.perforce.com/'

  binary 'p4'
  binary 'p4broker'
  binary 'p4d'
  binary 'p4p'

  caveats <<-EOS.undent
    Instructions on using the Helix Versioning Engine are available in

      #{staged_path}
  EOS
end
