cask 'perforce' do
  version '19.1-1813586'
  sha256 '3cd4c1f0e4561f11d435cdca40f32218370e9d8e37ad5edbcdcddea4ba3123df'

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
