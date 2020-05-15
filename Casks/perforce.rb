cask 'perforce' do
  version '20.1,1960190'
  sha256 'e01adb393d8d143639327eeb4b13673ff24ae9a0278859adfb56896f85c29320'

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
