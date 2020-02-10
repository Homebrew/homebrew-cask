cask 'perforce' do
  version '19.2,1908095'
  sha256 '28dee91966659dab0a749ba22e38df00c53691e4ce34ecb24a8199a4c816d45b'

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
